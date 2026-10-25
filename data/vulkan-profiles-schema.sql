CREATE TABLE IF NOT EXISTS vulkan_gpuinfo_profile (
	report_id bigint NOT NULL,
	profile_key text NOT NULL,
	profile_version integer,
	api_version text NOT NULL,
	profile_label text NOT NULL,
	vendor_id integer,
	vendor_name text,
	gpu_name text,
	driver_name text,
	driver_info text,
	os_name text,
	platform_name text,
	architecture text,
	submitted_at timestamp without time zone,
	source_payload jsonb NOT NULL,
	PRIMARY KEY (report_id, profile_key),
	CONSTRAINT vulkan_gpuinfo_profile_source_payload_is_object
		CHECK (jsonb_typeof(source_payload) = 'object')
);

COMMENT ON TABLE vulkan_gpuinfo_profile IS 'Raw Vulkan GPU Info profile records imported from per-report JSON files such as data/pc-hardware/vulkan-profiles/49077.json. One row represents one top-level profile entry within a report file, with commonly filtered identity fields promoted to columns and the full original document preserved in source_payload.';

COMMENT ON COLUMN vulkan_gpuinfo_profile.report_id IS 'Natural key component from the source filename or report URL id, for example 49077 from getprofile.php?id=49077. Together with profile_key this forms the primary key.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.profile_key IS 'Natural key component from the top-level profiles object key, for example VP_GPUINFO_NVIDIA_GeForce_RTX_4070_Ti_610_47_0_0_windows_11. Stored separately because it is the most stable profile identifier inside the JSON document.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.profile_version IS 'Profile schema version from profiles.<profile_key>.version when present. Null when the source profile omits the version field.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.api_version IS 'Vulkan API version string from profiles.<profile_key>.api-version, for example 1.4.341. Promoted because it is a common filter and grouping field.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.profile_label IS 'Human-readable label from profiles.<profile_key>.label, for example NVIDIA GeForce RTX 4070 Ti driver 610.47.0.0 on Windows 11.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.vendor_id IS 'Numeric vendor identifier from capabilities.device.properties.VkPhysicalDeviceProperties.vendorID when present.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.vendor_name IS 'Vendor name promoted from the payload, typically from capabilities.device.properties.VkPhysicalDeviceDriverPropertiesKHR.driverName or equivalent normalized import metadata.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.gpu_name IS 'GPU model or device name promoted from the payload, typically the device name portion of the label or Vulkan properties section.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.driver_name IS 'Driver name from capabilities.device.properties.VkPhysicalDeviceDriverPropertiesKHR.driverName when present.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.driver_info IS 'Driver info string from capabilities.device.properties.VkPhysicalDeviceDriverPropertiesKHR.driverInfo when present.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.os_name IS 'Operating system name promoted from the payload or parsed import metadata, for example Windows, Linux, Android, macOS, or iOS.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.platform_name IS 'Platform name from the payload when available, often aligned with the platform listed by Vulkan GPU Info.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.architecture IS 'Architecture string from the payload when available, for example x86_64 or arm64.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.submitted_at IS 'Submission timestamp for the report when available from the payload, typically derived from the device report metadata or history section.';
COMMENT ON COLUMN vulkan_gpuinfo_profile.source_payload IS 'Complete original Vulkan GPU Info JSON document as jsonb. This preserves nested features, properties, extensions, formats, and queue family data that are intentionally not normalized in this first-pass ingestion schema.';

CREATE INDEX IF NOT EXISTS vulkan_gpuinfo_profile_vendor_name_idx
	ON vulkan_gpuinfo_profile (vendor_name);

CREATE INDEX IF NOT EXISTS vulkan_gpuinfo_profile_gpu_name_lower_idx
	ON vulkan_gpuinfo_profile (lower(gpu_name));

CREATE INDEX IF NOT EXISTS vulkan_gpuinfo_profile_api_version_idx
	ON vulkan_gpuinfo_profile (api_version);

CREATE INDEX IF NOT EXISTS vulkan_gpuinfo_profile_submitted_at_idx
	ON vulkan_gpuinfo_profile (submitted_at);

CREATE INDEX IF NOT EXISTS vulkan_gpuinfo_profile_source_payload_gin_idx
	ON vulkan_gpuinfo_profile USING gin (source_payload jsonb_path_ops);
