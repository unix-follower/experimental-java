CREATE TABLE eu_exoplanet (
	name TEXT PRIMARY KEY,
	planet_status TEXT,
	mass NUMERIC,
	mass_error_min NUMERIC,
	mass_error_max NUMERIC,
	mass_sini NUMERIC,
	mass_sini_error_min NUMERIC,
	mass_sini_error_max NUMERIC,
	radius NUMERIC,
	radius_error_min NUMERIC,
	radius_error_max NUMERIC,
	orbital_period NUMERIC,
	orbital_period_error_min NUMERIC,
	orbital_period_error_max NUMERIC,
	semi_major_axis NUMERIC,
	semi_major_axis_error_min NUMERIC,
	semi_major_axis_error_max NUMERIC,
	eccentricity NUMERIC,
	eccentricity_error_min NUMERIC,
	eccentricity_error_max NUMERIC,
	inclination NUMERIC,
	inclination_error_min NUMERIC,
	inclination_error_max NUMERIC,
	angular_distance NUMERIC,
	discovered BIGINT,
	updated DATE,
	omega NUMERIC,
	omega_error_min NUMERIC,
	omega_error_max NUMERIC,
	tperi NUMERIC,
	tperi_error_min NUMERIC,
	tperi_error_max NUMERIC,
	tconj NUMERIC,
	tconj_error_min NUMERIC,
	tconj_error_max NUMERIC,
	tzero_tr NUMERIC,
	tzero_tr_error_min NUMERIC,
	tzero_tr_error_max NUMERIC,
	tzero_tr_sec NUMERIC,
	tzero_tr_sec_error_min NUMERIC,
	tzero_tr_sec_error_max NUMERIC,
	lambda_angle NUMERIC,
	lambda_angle_error_min NUMERIC,
	lambda_angle_error_max NUMERIC,
	impact_parameter NUMERIC,
	impact_parameter_error_min NUMERIC,
	impact_parameter_error_max NUMERIC,
	tzero_vr NUMERIC,
	tzero_vr_error_min NUMERIC,
	tzero_vr_error_max NUMERIC,
	k NUMERIC,
	k_error_min NUMERIC,
	k_error_max NUMERIC,
	temp_calculated NUMERIC,
	temp_calculated_error_min NUMERIC,
	temp_calculated_error_max NUMERIC,
	temp_measured NUMERIC,
	hot_point_lon NUMERIC,
	geometric_albedo NUMERIC,
	geometric_albedo_error_min NUMERIC,
	geometric_albedo_error_max NUMERIC,
	log_g NUMERIC,
	publication TEXT,
	detection_type TEXT,
	mass_measurement_type TEXT,
	radius_measurement_type TEXT,
	alternate_names TEXT,
	molecules TEXT,
	star_name TEXT,
	ra NUMERIC,
	dec NUMERIC,
	mag_v NUMERIC,
	mag_i NUMERIC,
	mag_j NUMERIC,
	mag_h NUMERIC,
	mag_k NUMERIC,
	star_distance NUMERIC,
	star_distance_error_min NUMERIC,
	star_distance_error_max NUMERIC,
	star_metallicity NUMERIC,
	star_metallicity_error_min NUMERIC,
	star_metallicity_error_max NUMERIC,
	star_mass NUMERIC,
	star_mass_error_min NUMERIC,
	star_mass_error_max NUMERIC,
	star_radius NUMERIC,
	star_radius_error_min NUMERIC,
	star_radius_error_max NUMERIC,
	star_sp_type TEXT,
	star_age NUMERIC,
	star_age_error_min NUMERIC,
	star_age_error_max NUMERIC,
	star_teff NUMERIC,
	star_teff_error_min NUMERIC,
	star_teff_error_max NUMERIC,
	star_detected_disc TEXT,
	star_magnetic_field TEXT,
	star_alternate_names TEXT
);

CREATE INDEX idx_eu_exoplanet_star_name ON eu_exoplanet (star_name);
CREATE INDEX idx_eu_exoplanet_planet_status ON eu_exoplanet (planet_status);
CREATE INDEX idx_eu_exoplanet_detection_type ON eu_exoplanet (detection_type);
CREATE INDEX idx_eu_exoplanet_discovered ON eu_exoplanet (discovered) WHERE discovered IS NOT NULL;
CREATE INDEX idx_eu_exoplanet_updated ON eu_exoplanet (updated) WHERE updated IS NOT NULL;

COMMENT ON COLUMN eu_exoplanet.name IS 'Exoplanet designation';
COMMENT ON COLUMN eu_exoplanet.planet_status IS 'Discovery confirmation status';
COMMENT ON COLUMN eu_exoplanet.mass IS 'Planet mass in Jupiter masses';
COMMENT ON COLUMN eu_exoplanet.mass_error_min IS 'Lower error on planet mass';
COMMENT ON COLUMN eu_exoplanet.mass_error_max IS 'Upper error on planet mass';
COMMENT ON COLUMN eu_exoplanet.mass_sini IS 'Minimum mass multiplied by sine of inclination';
COMMENT ON COLUMN eu_exoplanet.mass_sini_error_min IS 'Lower error on m*sin(i)';
COMMENT ON COLUMN eu_exoplanet.mass_sini_error_max IS 'Upper error on m*sin(i)';
COMMENT ON COLUMN eu_exoplanet.radius IS 'Planet radius in Jupiter radii';
COMMENT ON COLUMN eu_exoplanet.radius_error_min IS 'Lower error on planet radius';
COMMENT ON COLUMN eu_exoplanet.radius_error_max IS 'Upper error on planet radius';
COMMENT ON COLUMN eu_exoplanet.orbital_period IS 'Orbital period in days';
COMMENT ON COLUMN eu_exoplanet.orbital_period_error_min IS 'Lower error on orbital period';
COMMENT ON COLUMN eu_exoplanet.orbital_period_error_max IS 'Upper error on orbital period';
COMMENT ON COLUMN eu_exoplanet.semi_major_axis IS 'Semi-major axis in astronomical units';
COMMENT ON COLUMN eu_exoplanet.semi_major_axis_error_min IS 'Lower error on semi-major axis';
COMMENT ON COLUMN eu_exoplanet.semi_major_axis_error_max IS 'Upper error on semi-major axis';
COMMENT ON COLUMN eu_exoplanet.eccentricity IS 'Orbital eccentricity';
COMMENT ON COLUMN eu_exoplanet.eccentricity_error_min IS 'Lower error on eccentricity';
COMMENT ON COLUMN eu_exoplanet.eccentricity_error_max IS 'Upper error on eccentricity';
COMMENT ON COLUMN eu_exoplanet.inclination IS 'Orbital inclination in degrees';
COMMENT ON COLUMN eu_exoplanet.inclination_error_min IS 'Lower error on inclination';
COMMENT ON COLUMN eu_exoplanet.inclination_error_max IS 'Upper error on inclination';
COMMENT ON COLUMN eu_exoplanet.angular_distance IS 'Angular distance from host star';
COMMENT ON COLUMN eu_exoplanet.discovered IS 'Discovery year';
COMMENT ON COLUMN eu_exoplanet.updated IS 'Last update date';
COMMENT ON COLUMN eu_exoplanet.omega IS 'Argument of periastron in degrees';
COMMENT ON COLUMN eu_exoplanet.omega_error_min IS 'Lower error on omega';
COMMENT ON COLUMN eu_exoplanet.omega_error_max IS 'Upper error on omega';
COMMENT ON COLUMN eu_exoplanet.tperi IS 'Time of periastron passage';
COMMENT ON COLUMN eu_exoplanet.tperi_error_min IS 'Lower error on tperi';
COMMENT ON COLUMN eu_exoplanet.tperi_error_max IS 'Upper error on tperi';
COMMENT ON COLUMN eu_exoplanet.tconj IS 'Time of conjunction';
COMMENT ON COLUMN eu_exoplanet.tconj_error_min IS 'Lower error on tconj';
COMMENT ON COLUMN eu_exoplanet.tconj_error_max IS 'Upper error on tconj';
COMMENT ON COLUMN eu_exoplanet.tzero_tr IS 'Time of transit zero in days';
COMMENT ON COLUMN eu_exoplanet.tzero_tr_error_min IS 'Lower error on tzero_tr';
COMMENT ON COLUMN eu_exoplanet.tzero_tr_error_max IS 'Upper error on tzero_tr';
COMMENT ON COLUMN eu_exoplanet.tzero_tr_sec IS 'Time of secondary eclipse';
COMMENT ON COLUMN eu_exoplanet.tzero_tr_sec_error_min IS 'Lower error on tzero_tr_sec';
COMMENT ON COLUMN eu_exoplanet.tzero_tr_sec_error_max IS 'Upper error on tzero_tr_sec';
COMMENT ON COLUMN eu_exoplanet.lambda_angle IS 'Projected spin-orbit angle in degrees';
COMMENT ON COLUMN eu_exoplanet.lambda_angle_error_min IS 'Lower error on lambda angle';
COMMENT ON COLUMN eu_exoplanet.lambda_angle_error_max IS 'Upper error on lambda angle';
COMMENT ON COLUMN eu_exoplanet.impact_parameter IS 'Impact parameter of transit';
COMMENT ON COLUMN eu_exoplanet.impact_parameter_error_min IS 'Lower error on impact parameter';
COMMENT ON COLUMN eu_exoplanet.impact_parameter_error_max IS 'Upper error on impact parameter';
COMMENT ON COLUMN eu_exoplanet.tzero_vr IS 'Time zero for radial velocity';
COMMENT ON COLUMN eu_exoplanet.tzero_vr_error_min IS 'Lower error on tzero_vr';
COMMENT ON COLUMN eu_exoplanet.tzero_vr_error_max IS 'Upper error on tzero_vr';
COMMENT ON COLUMN eu_exoplanet.k IS 'Radial velocity amplitude';
COMMENT ON COLUMN eu_exoplanet.k_error_min IS 'Lower error on radial velocity amplitude';
COMMENT ON COLUMN eu_exoplanet.k_error_max IS 'Upper error on radial velocity amplitude';
COMMENT ON COLUMN eu_exoplanet.temp_calculated IS 'Equilibrium temperature calculated';
COMMENT ON COLUMN eu_exoplanet.temp_calculated_error_min IS 'Lower error on calculated temperature';
COMMENT ON COLUMN eu_exoplanet.temp_calculated_error_max IS 'Upper error on calculated temperature';
COMMENT ON COLUMN eu_exoplanet.temp_measured IS 'Measured brightness temperature';
COMMENT ON COLUMN eu_exoplanet.hot_point_lon IS 'Longitude of hottest point in degrees';
COMMENT ON COLUMN eu_exoplanet.geometric_albedo IS 'Geometric albedo';
COMMENT ON COLUMN eu_exoplanet.geometric_albedo_error_min IS 'Lower error on geometric albedo';
COMMENT ON COLUMN eu_exoplanet.geometric_albedo_error_max IS 'Upper error on geometric albedo';
COMMENT ON COLUMN eu_exoplanet.log_g IS 'Surface gravity in log scale';
COMMENT ON COLUMN eu_exoplanet.publication IS 'Publication status';
COMMENT ON COLUMN eu_exoplanet.detection_type IS 'Primary detection method';
COMMENT ON COLUMN eu_exoplanet.mass_measurement_type IS 'Type of mass measurement';
COMMENT ON COLUMN eu_exoplanet.radius_measurement_type IS 'Type of radius measurement';
COMMENT ON COLUMN eu_exoplanet.alternate_names IS 'Alternative planet designations';
COMMENT ON COLUMN eu_exoplanet.molecules IS 'Detected atmospheric molecules';
COMMENT ON COLUMN eu_exoplanet.star_name IS 'Host star identifier';
COMMENT ON COLUMN eu_exoplanet.ra IS 'Right ascension in degrees';
COMMENT ON COLUMN eu_exoplanet.dec IS 'Declination in degrees';
COMMENT ON COLUMN eu_exoplanet.mag_v IS 'Visual magnitude';
COMMENT ON COLUMN eu_exoplanet.mag_i IS 'Infrared magnitude I-band';
COMMENT ON COLUMN eu_exoplanet.mag_j IS 'Infrared magnitude J-band';
COMMENT ON COLUMN eu_exoplanet.mag_h IS 'Infrared magnitude H-band';
COMMENT ON COLUMN eu_exoplanet.mag_k IS 'Infrared magnitude K-band';
COMMENT ON COLUMN eu_exoplanet.star_distance IS 'Distance to star in parsecs';
COMMENT ON COLUMN eu_exoplanet.star_distance_error_min IS 'Lower error on star distance';
COMMENT ON COLUMN eu_exoplanet.star_distance_error_max IS 'Upper error on star distance';
COMMENT ON COLUMN eu_exoplanet.star_metallicity IS 'Stellar metallicity';
COMMENT ON COLUMN eu_exoplanet.star_metallicity_error_min IS 'Lower error on stellar metallicity';
COMMENT ON COLUMN eu_exoplanet.star_metallicity_error_max IS 'Upper error on stellar metallicity';
COMMENT ON COLUMN eu_exoplanet.star_mass IS 'Stellar mass in solar masses';
COMMENT ON COLUMN eu_exoplanet.star_mass_error_min IS 'Lower error on stellar mass';
COMMENT ON COLUMN eu_exoplanet.star_mass_error_max IS 'Upper error on stellar mass';
COMMENT ON COLUMN eu_exoplanet.star_radius IS 'Stellar radius in solar radii';
COMMENT ON COLUMN eu_exoplanet.star_radius_error_min IS 'Lower error on stellar radius';
COMMENT ON COLUMN eu_exoplanet.star_radius_error_max IS 'Upper error on stellar radius';
COMMENT ON COLUMN eu_exoplanet.star_sp_type IS 'Stellar spectral classification';
COMMENT ON COLUMN eu_exoplanet.star_age IS 'Stellar age in Gyr';
COMMENT ON COLUMN eu_exoplanet.star_age_error_min IS 'Lower error on stellar age';
COMMENT ON COLUMN eu_exoplanet.star_age_error_max IS 'Upper error on stellar age';
COMMENT ON COLUMN eu_exoplanet.star_teff IS 'Stellar effective temperature in K';
COMMENT ON COLUMN eu_exoplanet.star_teff_error_min IS 'Lower error on effective temperature';
COMMENT ON COLUMN eu_exoplanet.star_teff_error_max IS 'Upper error on effective temperature';
COMMENT ON COLUMN eu_exoplanet.star_detected_disc IS 'Debris disk detection';
COMMENT ON COLUMN eu_exoplanet.star_magnetic_field IS 'Stellar magnetic field measurement';
COMMENT ON COLUMN eu_exoplanet.star_alternate_names IS 'Alternative host star designations';
