#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_CSV_PATH="$SCRIPT_DIR/PS_2026.05.28_13.08.08.csv"
DEFAULT_SCHEMA_PATH="$SCRIPT_DIR/nasa-exoplanet-schema.sql"
DEFAULT_TABLE_NAME="nasa_exoplanet"

print_usage() {
	cat <<EOF
Usage: $(basename "$0") [options]

Apply the NASA exoplanet schema and load the CSV export into PostgreSQL.

Options:
  --csv PATH         Path to the NASA CSV export.
  --schema PATH      Path to the schema SQL file.
  --table NAME       Target table name. Default: ${DEFAULT_TABLE_NAME}
  --schema-only      Apply the schema without loading data.
  --load-only        Load data without reapplying the schema.
  --truncate         Truncate the target table before loading data.
  --help             Show this help text.

Environment:
  DB_URL             PostgreSQL connection string for psql.

Examples:
  DB_URL='postgresql://user:pass@host:5432/db' $(basename "$0")
  DB_URL='postgresql://user:pass@host:5432/db' $(basename "$0") --load-only --truncate
EOF
}

require_command() {
	local command_name="$1"

	if ! command -v "$command_name" >/dev/null 2>&1; then
		echo "Missing required command: $command_name" >&2
		exit 1
	fi
}

extract_csv_payload() {
	local source_csv="$1"
	local destination_csv="$2"

	# The NASA export starts with comment metadata; COPY needs the header row first.
	awk 'BEGIN { emit = 0 } /^rowid,/ { emit = 1 } emit { print }' "$source_csv" > "$destination_csv"

	if [[ ! -s "$destination_csv" ]]; then
		echo "Failed to extract CSV payload from $source_csv" >&2
		exit 1
	fi
}

apply_schema() {
	local schema_path="$1"

	psql "$DB_URL" -v ON_ERROR_STOP=1 -f "$schema_path"
}

truncate_table() {
	local table_name="$1"

	psql "$DB_URL" -v ON_ERROR_STOP=1 -c "TRUNCATE TABLE ${table_name};"
}

load_csv() {
	local table_name="$1"
	local csv_path="$2"

	psql "$DB_URL" -v ON_ERROR_STOP=1 --set=table_name="$table_name" --set=csv_path="$csv_path" <<'EOF'
\copy :table_name FROM :'csv_path' WITH (FORMAT csv, HEADER true)
SELECT COUNT(*) AS nasa_exoplanet_row_count FROM :table_name;
EOF
}

csv_path="$DEFAULT_CSV_PATH"
schema_path="$DEFAULT_SCHEMA_PATH"
table_name="$DEFAULT_TABLE_NAME"
apply_schema_flag=1
load_data_flag=1
truncate_flag=0

while [[ $# -gt 0 ]]; do
	case "$1" in
		--csv)
			csv_path="$2"
			shift 2
			;;
		--schema)
			schema_path="$2"
			shift 2
			;;
		--table)
			table_name="$2"
			shift 2
			;;
		--schema-only)
			apply_schema_flag=1
			load_data_flag=0
			shift
			;;
		--load-only)
			apply_schema_flag=0
			load_data_flag=1
			shift
			;;
		--truncate)
			truncate_flag=1
			shift
			;;
		--help|-h)
			print_usage
			exit 0
			;;
		*)
			echo "Unknown option: $1" >&2
			print_usage >&2
			exit 1
			;;
	esac
done

if [[ -z "${DB_URL:-}" ]]; then
	echo "DB_URL env variable is required." >&2
	exit 1
fi

if [[ "$apply_schema_flag" -eq 1 && ! -f "$schema_path" ]]; then
	echo "Schema file not found: $schema_path" >&2
	exit 1
fi

if [[ "$load_data_flag" -eq 1 && ! -f "$csv_path" ]]; then
	echo "CSV file not found: $csv_path" >&2
	exit 1
fi

require_command psql

if [[ "$load_data_flag" -eq 1 ]]; then
	require_command awk
	require_command mktemp
fi

if [[ "$apply_schema_flag" -eq 1 ]]; then
	apply_schema "$schema_path"
fi

if [[ "$load_data_flag" -eq 1 ]]; then
	filtered_csv="$(mktemp "${TMPDIR:-/tmp}/nasa-exoplanet.XXXXXX.csv")"
	trap 'rm -f "$filtered_csv"' EXIT

	extract_csv_payload "$csv_path" "$filtered_csv"

	if [[ "$truncate_flag" -eq 1 ]]; then
		truncate_table "$table_name"
	fi

	load_csv "$table_name" "$filtered_csv"
fi
