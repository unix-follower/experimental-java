CREATE TABLE IF NOT EXISTS user_benchmark_component (
	type text NOT NULL,
	brand text NOT NULL,
	model text NOT NULL,
	part_number text NOT NULL DEFAULT '',
	rank integer NOT NULL,
	benchmark integer NOT NULL,
	samples integer NOT NULL,
	url text,
	PRIMARY KEY (type, brand, model, part_number),
	CONSTRAINT user_benchmark_component_rank_nonnegative
		CHECK (rank >= 0),
	CONSTRAINT user_benchmark_component_benchmark_nonnegative
		CHECK (benchmark >= 0),
	CONSTRAINT user_benchmark_component_samples_nonnegative
		CHECK (samples >= 0)
);

COMMENT ON TABLE user_benchmark_component IS 'Hardware benchmark records from UserBenchmark CSV extracts such as CPU_UserBenchmarks.csv, GPU_UserBenchmarks.csv, SSD_UserBenchmarks.csv, RAM_UserBenchmarks.csv, HDD_UserBenchmarks.csv, and USB_UserBenchmarks.csv. The source is a flat CSV with one row per benchmarked product or OEM variant. URL is retained for lookup but is not unique across rows, so the table uses a composite natural key instead.';

COMMENT ON COLUMN user_benchmark_component.type IS 'Hardware category from the CSV Type column, for example CPU, GPU, SSD, RAM, HDD, or USB.';
COMMENT ON COLUMN user_benchmark_component.brand IS 'Brand or manufacturer from the CSV Brand column, for example Intel, AMD, Nvidia, Asus, WD, Crucial, or Gigabyte.';
COMMENT ON COLUMN user_benchmark_component.model IS 'Model name from the CSV Model column. This may be a generic reference product or a board-partner-specific variant name.';
COMMENT ON COLUMN user_benchmark_component.part_number IS 'Part number or SKU from the CSV Part Number column. Stored as an empty string instead of null because some generic reference rows omit the part number and the column participates in the composite primary key.';
COMMENT ON COLUMN user_benchmark_component.rank IS 'Ranking position from the CSV Rank column within the corresponding hardware type. Lower values indicate better rank.';
COMMENT ON COLUMN user_benchmark_component.benchmark IS 'Benchmark score from the CSV Benchmark column. Higher values indicate stronger benchmark performance according to the source dataset.';
COMMENT ON COLUMN user_benchmark_component.samples IS 'Number of observed samples from the CSV Samples column for the benchmarked entry.';
COMMENT ON COLUMN user_benchmark_component.url IS 'UserBenchmark detail page URL from the CSV URL column. This column is indexed for reverse lookups, but it cannot be used as a primary key because multiple OEM or variant rows can share the same URL.';

CREATE INDEX IF NOT EXISTS user_benchmark_component_type_idx
	ON user_benchmark_component (type);

CREATE INDEX IF NOT EXISTS user_benchmark_component_brand_idx
	ON user_benchmark_component (brand);

CREATE INDEX IF NOT EXISTS user_benchmark_component_model_lower_idx
	ON user_benchmark_component (lower(model));

CREATE INDEX IF NOT EXISTS user_benchmark_component_type_brand_idx
	ON user_benchmark_component (type, brand);

CREATE INDEX IF NOT EXISTS user_benchmark_component_rank_idx
	ON user_benchmark_component (rank);

CREATE INDEX IF NOT EXISTS user_benchmark_component_url_idx
	ON user_benchmark_component (url);
