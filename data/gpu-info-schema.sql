CREATE TABLE IF NOT EXISTS gpu_info_api_gpu (
	gpu_id text PRIMARY KEY,
	vendor text NOT NULL,
	model text NOT NULL,
	code_name text NOT NULL,
	launch_ts timestamp without time zone,
	launch_date_text text,
	bus_interface text,
	memory_bus_type text,
	source_payload jsonb NOT NULL,
	CONSTRAINT gpu_info_api_gpu_source_payload_is_object
		CHECK (jsonb_typeof(source_payload) = 'object')
);

COMMENT ON TABLE gpu_info_api_gpu IS 'GPU catalog records from gpu-info-api gpu.json. The source is a top-level JSON object keyed by a unique GPU identifier, with a long tail of sparse and inconsistent attribute names retained in source_payload.';

COMMENT ON COLUMN gpu_info_api_gpu.gpu_id IS 'Natural primary key from the top-level key in gpu.json, for example NVIDIA_NV1. This key is unique across the source object and is the most stable identifier exposed by the dataset.';
COMMENT ON COLUMN gpu_info_api_gpu.vendor IS 'Vendor name copied from the source record, typically NVIDIA, AMD, or Intel.';
COMMENT ON COLUMN gpu_info_api_gpu.model IS 'Model name from the source record. Stored separately because it is present on every record and is a common lookup field.';
COMMENT ON COLUMN gpu_info_api_gpu.code_name IS 'Code name from the source record. Stored separately because it is present on every record and commonly used for grouping or filtering.';
COMMENT ON COLUMN gpu_info_api_gpu.launch_ts IS 'Normalized launch timestamp from the source Launch field when available. Null when the source record does not provide a machine-readable launch timestamp.';
COMMENT ON COLUMN gpu_info_api_gpu.launch_date_text IS 'Original human-readable launch date from the source Launch Date field when available.';
COMMENT ON COLUMN gpu_info_api_gpu.bus_interface IS 'Bus interface value from the source record when a canonical Bus Interface field is present.';
COMMENT ON COLUMN gpu_info_api_gpu.memory_bus_type IS 'Memory bus type from the source record when a canonical Memory Bus Type field is present.';
COMMENT ON COLUMN gpu_info_api_gpu.source_payload IS 'Complete source record as jsonb, preserving the full sparse attribute set and vendor- or era-specific columns that are not modeled as dedicated relational columns.';

CREATE INDEX IF NOT EXISTS gpu_info_api_gpu_vendor_idx
	ON gpu_info_api_gpu (vendor);

CREATE INDEX IF NOT EXISTS gpu_info_api_gpu_model_lower_idx
	ON gpu_info_api_gpu (lower(model));

CREATE INDEX IF NOT EXISTS gpu_info_api_gpu_code_name_lower_idx
	ON gpu_info_api_gpu (lower(code_name));

CREATE INDEX IF NOT EXISTS gpu_info_api_gpu_launch_ts_idx
	ON gpu_info_api_gpu (launch_ts);

CREATE INDEX IF NOT EXISTS gpu_info_api_gpu_source_payload_gin_idx
	ON gpu_info_api_gpu USING gin (source_payload jsonb_path_ops);
