CREATE TABLE nasa_exoplanet (
	rowid BIGINT PRIMARY KEY,
	pl_name TEXT,
	hostname TEXT,
	pl_letter TEXT,
	hd_name TEXT,
	hip_name TEXT,
	tic_id TEXT,
	gaia_dr2_id TEXT,
	gaia_dr3_id TEXT,
	default_flag BOOLEAN,
	sy_snum BIGINT,
	sy_pnum BIGINT,
	sy_mnum BIGINT,
	cb_flag BOOLEAN,
	discoverymethod TEXT,
	disc_year BIGINT,
	disc_refname TEXT,
	disc_pubdate TEXT,
	disc_locale TEXT,
	disc_facility TEXT,
	disc_telescope TEXT,
	disc_instrument TEXT,
	rv_flag BOOLEAN,
	pul_flag BOOLEAN,
	ptv_flag BOOLEAN,
	tran_flag BOOLEAN,
	ast_flag BOOLEAN,
	obm_flag BOOLEAN,
	micro_flag BOOLEAN,
	etv_flag BOOLEAN,
	ima_flag BOOLEAN,
	dkin_flag BOOLEAN,
	soltype TEXT,
	pl_controv_flag BOOLEAN,
	pl_refname TEXT,
	pl_orbper NUMERIC,
	pl_orbpererr1 NUMERIC,
	pl_orbpererr2 NUMERIC,
	pl_orbperlim SMALLINT,
	pl_orbsmax NUMERIC,
	pl_orbsmaxerr1 NUMERIC,
	pl_orbsmaxerr2 NUMERIC,
	pl_orbsmaxlim SMALLINT,
	pl_rade NUMERIC,
	pl_radeerr1 NUMERIC,
	pl_radeerr2 NUMERIC,
	pl_radelim SMALLINT,
	pl_radj NUMERIC,
	pl_radjerr1 NUMERIC,
	pl_radjerr2 NUMERIC,
	pl_radjlim SMALLINT,
	pl_masse NUMERIC,
	pl_masseerr1 NUMERIC,
	pl_masseerr2 NUMERIC,
	pl_masselim SMALLINT,
	pl_massj NUMERIC,
	pl_massjerr1 NUMERIC,
	pl_massjerr2 NUMERIC,
	pl_massjlim SMALLINT,
	pl_msinie NUMERIC,
	pl_msinieerr1 NUMERIC,
	pl_msinieerr2 NUMERIC,
	pl_msinielim SMALLINT,
	pl_msinij NUMERIC,
	pl_msinijerr1 NUMERIC,
	pl_msinijerr2 NUMERIC,
	pl_msinijlim SMALLINT,
	pl_cmasse NUMERIC,
	pl_cmasseerr1 NUMERIC,
	pl_cmasseerr2 NUMERIC,
	pl_cmasselim SMALLINT,
	pl_cmassj NUMERIC,
	pl_cmassjerr1 NUMERIC,
	pl_cmassjerr2 NUMERIC,
	pl_cmassjlim SMALLINT,
	pl_bmasse NUMERIC,
	pl_bmasseerr1 NUMERIC,
	pl_bmasseerr2 NUMERIC,
	pl_bmasselim SMALLINT,
	pl_bmassj NUMERIC,
	pl_bmassjerr1 NUMERIC,
	pl_bmassjerr2 NUMERIC,
	pl_bmassjlim SMALLINT,
	pl_bmassprov TEXT,
	pl_dens NUMERIC,
	pl_denserr1 NUMERIC,
	pl_denserr2 NUMERIC,
	pl_denslim SMALLINT,
	pl_orbeccen NUMERIC,
	pl_orbeccenerr1 NUMERIC,
	pl_orbeccenerr2 NUMERIC,
	pl_orbeccenlim SMALLINT,
	pl_insol NUMERIC,
	pl_insolerr1 NUMERIC,
	pl_insolerr2 NUMERIC,
	pl_insollim SMALLINT,
	pl_eqt NUMERIC,
	pl_eqterr1 NUMERIC,
	pl_eqterr2 NUMERIC,
	pl_eqtlim SMALLINT,
	pl_orbincl NUMERIC,
	pl_orbinclerr1 NUMERIC,
	pl_orbinclerr2 NUMERIC,
	pl_orbincllim SMALLINT,
	pl_tranmid NUMERIC,
	pl_tranmiderr1 NUMERIC,
	pl_tranmiderr2 NUMERIC,
	pl_tranmidlim SMALLINT,
	pl_tsystemref TEXT,
	ttv_flag BOOLEAN,
	pl_imppar NUMERIC,
	pl_impparerr1 NUMERIC,
	pl_impparerr2 NUMERIC,
	pl_impparlim SMALLINT,
	pl_trandep NUMERIC,
	pl_trandeperr1 NUMERIC,
	pl_trandeperr2 NUMERIC,
	pl_trandeplim SMALLINT,
	pl_trandur NUMERIC,
	pl_trandurerr1 NUMERIC,
	pl_trandurerr2 NUMERIC,
	pl_trandurlim SMALLINT,
	pl_ratdor NUMERIC,
	pl_ratdorerr1 NUMERIC,
	pl_ratdorerr2 NUMERIC,
	pl_ratdorlim SMALLINT,
	pl_ratror NUMERIC,
	pl_ratrorerr1 NUMERIC,
	pl_ratrorerr2 NUMERIC,
	pl_ratrorlim SMALLINT,
	pl_occdep NUMERIC,
	pl_occdeperr1 NUMERIC,
	pl_occdeperr2 NUMERIC,
	pl_occdeplim SMALLINT,
	pl_orbtper NUMERIC,
	pl_orbtpererr1 NUMERIC,
	pl_orbtpererr2 NUMERIC,
	pl_orbtperlim SMALLINT,
	pl_orblper NUMERIC,
	pl_orblpererr1 NUMERIC,
	pl_orblpererr2 NUMERIC,
	pl_orblperlim SMALLINT,
	pl_rvamp NUMERIC,
	pl_rvamperr1 NUMERIC,
	pl_rvamperr2 NUMERIC,
	pl_rvamplim SMALLINT,
	pl_projobliq NUMERIC,
	pl_projobliqerr1 NUMERIC,
	pl_projobliqerr2 NUMERIC,
	pl_projobliqlim SMALLINT,
	pl_trueobliq NUMERIC,
	pl_trueobliqerr1 NUMERIC,
	pl_trueobliqerr2 NUMERIC,
	pl_trueobliqlim SMALLINT,
	st_refname TEXT,
	st_spectype TEXT,
	st_teff NUMERIC,
	st_tefferr1 NUMERIC,
	st_tefferr2 NUMERIC,
	st_tefflim SMALLINT,
	st_rad NUMERIC,
	st_raderr1 NUMERIC,
	st_raderr2 NUMERIC,
	st_radlim SMALLINT,
	st_mass NUMERIC,
	st_masserr1 NUMERIC,
	st_masserr2 NUMERIC,
	st_masslim SMALLINT,
	st_met NUMERIC,
	st_meterr1 NUMERIC,
	st_meterr2 NUMERIC,
	st_metlim SMALLINT,
	st_metratio TEXT,
	st_lum NUMERIC,
	st_lumerr1 NUMERIC,
	st_lumerr2 NUMERIC,
	st_lumlim SMALLINT,
	st_logg NUMERIC,
	st_loggerr1 NUMERIC,
	st_loggerr2 NUMERIC,
	st_logglim SMALLINT,
	st_age NUMERIC,
	st_ageerr1 NUMERIC,
	st_ageerr2 NUMERIC,
	st_agelim SMALLINT,
	st_dens NUMERIC,
	st_denserr1 NUMERIC,
	st_denserr2 NUMERIC,
	st_denslim SMALLINT,
	st_vsin NUMERIC,
	st_vsinerr1 NUMERIC,
	st_vsinerr2 NUMERIC,
	st_vsinlim SMALLINT,
	st_rotp NUMERIC,
	st_rotperr1 NUMERIC,
	st_rotperr2 NUMERIC,
	st_rotplim SMALLINT,
	st_radv NUMERIC,
	st_radverr1 NUMERIC,
	st_radverr2 NUMERIC,
	st_radvlim SMALLINT,
	sy_refname TEXT,
	rastr TEXT,
	ra NUMERIC,
	decstr TEXT,
	dec NUMERIC,
	glat NUMERIC,
	glon NUMERIC,
	elat NUMERIC,
	elon NUMERIC,
	sy_pm NUMERIC,
	sy_pmerr1 NUMERIC,
	sy_pmerr2 NUMERIC,
	sy_pmra NUMERIC,
	sy_pmraerr1 NUMERIC,
	sy_pmraerr2 NUMERIC,
	sy_pmdec NUMERIC,
	sy_pmdecerr1 NUMERIC,
	sy_pmdecerr2 NUMERIC,
	sy_dist NUMERIC,
	sy_disterr1 NUMERIC,
	sy_disterr2 NUMERIC,
	sy_plx NUMERIC,
	sy_plxerr1 NUMERIC,
	sy_plxerr2 NUMERIC,
	sy_bmag NUMERIC,
	sy_bmagerr1 NUMERIC,
	sy_bmagerr2 NUMERIC,
	sy_vmag NUMERIC,
	sy_vmagerr1 NUMERIC,
	sy_vmagerr2 NUMERIC,
	sy_jmag NUMERIC,
	sy_jmagerr1 NUMERIC,
	sy_jmagerr2 NUMERIC,
	sy_hmag NUMERIC,
	sy_hmagerr1 NUMERIC,
	sy_hmagerr2 NUMERIC,
	sy_kmag NUMERIC,
	sy_kmagerr1 NUMERIC,
	sy_kmagerr2 NUMERIC,
	sy_umag NUMERIC,
	sy_umagerr1 NUMERIC,
	sy_umagerr2 NUMERIC,
	sy_gmag NUMERIC,
	sy_gmagerr1 NUMERIC,
	sy_gmagerr2 NUMERIC,
	sy_rmag NUMERIC,
	sy_rmagerr1 NUMERIC,
	sy_rmagerr2 NUMERIC,
	sy_imag NUMERIC,
	sy_imagerr1 NUMERIC,
	sy_imagerr2 NUMERIC,
	sy_zmag NUMERIC,
	sy_zmagerr1 NUMERIC,
	sy_zmagerr2 NUMERIC,
	sy_w1mag NUMERIC,
	sy_w1magerr1 NUMERIC,
	sy_w1magerr2 NUMERIC,
	sy_w2mag NUMERIC,
	sy_w2magerr1 NUMERIC,
	sy_w2magerr2 NUMERIC,
	sy_w3mag NUMERIC,
	sy_w3magerr1 NUMERIC,
	sy_w3magerr2 NUMERIC,
	sy_w4mag NUMERIC,
	sy_w4magerr1 NUMERIC,
	sy_w4magerr2 NUMERIC,
	sy_gaiamag NUMERIC,
	sy_gaiamagerr1 NUMERIC,
	sy_gaiamagerr2 NUMERIC,
	sy_icmag NUMERIC,
	sy_icmagerr1 NUMERIC,
	sy_icmagerr2 NUMERIC,
	sy_tmag NUMERIC,
	sy_tmagerr1 NUMERIC,
	sy_tmagerr2 NUMERIC,
	sy_kepmag NUMERIC,
	sy_kepmagerr1 NUMERIC,
	sy_kepmagerr2 NUMERIC,
	rowupdate DATE,
	pl_pubdate TEXT,
	releasedate DATE,
	pl_nnotes BIGINT,
	st_nphot BIGINT,
	st_nrvc BIGINT,
	st_nspec BIGINT,
	pl_nespec BIGINT,
	pl_ntranspec BIGINT,
	pl_ndispec BIGINT
);

CREATE INDEX idx_nasa_exoplanet_pl_name ON nasa_exoplanet (pl_name);
CREATE INDEX idx_nasa_exoplanet_hostname ON nasa_exoplanet (hostname);
CREATE INDEX idx_nasa_exoplanet_discoverymethod ON nasa_exoplanet (discoverymethod);
CREATE INDEX idx_nasa_exoplanet_disc_year ON nasa_exoplanet (disc_year) WHERE disc_year IS NOT NULL;
CREATE INDEX idx_nasa_exoplanet_gaia_dr3_id ON nasa_exoplanet (gaia_dr3_id) WHERE gaia_dr3_id IS NOT NULL AND gaia_dr3_id <> '';
CREATE INDEX idx_nasa_exoplanet_tic_id ON nasa_exoplanet (tic_id) WHERE tic_id IS NOT NULL AND tic_id <> '';

COMMENT ON COLUMN nasa_exoplanet.rowid IS 'NASA Exoplanet Archive row identifier.';
COMMENT ON COLUMN nasa_exoplanet.pl_name IS 'Planet Name';
COMMENT ON COLUMN nasa_exoplanet.hostname IS 'Host Name';
COMMENT ON COLUMN nasa_exoplanet.pl_letter IS 'Planet Letter';
COMMENT ON COLUMN nasa_exoplanet.hd_name IS 'HD ID';
COMMENT ON COLUMN nasa_exoplanet.hip_name IS 'HIP ID';
COMMENT ON COLUMN nasa_exoplanet.tic_id IS 'TIC ID';
COMMENT ON COLUMN nasa_exoplanet.gaia_dr2_id IS 'Gaia DR2 ID';
COMMENT ON COLUMN nasa_exoplanet.gaia_dr3_id IS 'Gaia DR3 ID';
COMMENT ON COLUMN nasa_exoplanet.default_flag IS 'Default Parameter Set';
COMMENT ON COLUMN nasa_exoplanet.sy_snum IS 'Number of Stars';
COMMENT ON COLUMN nasa_exoplanet.sy_pnum IS 'Number of Planets';
COMMENT ON COLUMN nasa_exoplanet.sy_mnum IS 'Number of Moons';
COMMENT ON COLUMN nasa_exoplanet.cb_flag IS 'Circumbinary Flag';
COMMENT ON COLUMN nasa_exoplanet.discoverymethod IS 'Discovery Method';
COMMENT ON COLUMN nasa_exoplanet.disc_year IS 'Discovery Year';
COMMENT ON COLUMN nasa_exoplanet.disc_refname IS 'Discovery Reference';
COMMENT ON COLUMN nasa_exoplanet.disc_pubdate IS 'Discovery Publication Date';
COMMENT ON COLUMN nasa_exoplanet.disc_locale IS 'Discovery Locale';
COMMENT ON COLUMN nasa_exoplanet.disc_facility IS 'Discovery Facility';
COMMENT ON COLUMN nasa_exoplanet.disc_telescope IS 'Discovery Telescope';
COMMENT ON COLUMN nasa_exoplanet.disc_instrument IS 'Discovery Instrument';
COMMENT ON COLUMN nasa_exoplanet.rv_flag IS 'Detected by Radial Velocity Variations';
COMMENT ON COLUMN nasa_exoplanet.pul_flag IS 'Detected by Pulsar Timing Variations';
COMMENT ON COLUMN nasa_exoplanet.ptv_flag IS 'Detected by Pulsation Timing Variations';
COMMENT ON COLUMN nasa_exoplanet.tran_flag IS 'Detected by Transits';
COMMENT ON COLUMN nasa_exoplanet.ast_flag IS 'Detected by Astrometric Variations';
COMMENT ON COLUMN nasa_exoplanet.obm_flag IS 'Detected by Orbital Brightness Modulations';
COMMENT ON COLUMN nasa_exoplanet.micro_flag IS 'Detected by Microlensing';
COMMENT ON COLUMN nasa_exoplanet.etv_flag IS 'Detected by Eclipse Timing Variations';
COMMENT ON COLUMN nasa_exoplanet.ima_flag IS 'Detected by Imaging';
COMMENT ON COLUMN nasa_exoplanet.dkin_flag IS 'Detected by Disk Kinematics';
COMMENT ON COLUMN nasa_exoplanet.soltype IS 'Solution Type';
COMMENT ON COLUMN nasa_exoplanet.pl_controv_flag IS 'Controversial Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_refname IS 'Planetary Parameter Reference';
COMMENT ON COLUMN nasa_exoplanet.pl_orbper IS 'Orbital Period [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbpererr1 IS 'Orbital Period Upper Unc. [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbpererr2 IS 'Orbital Period Lower Unc. [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbperlim IS 'Orbital Period Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_orbsmax IS 'Orbit Semi-Major Axis [au]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbsmaxerr1 IS 'Orbit Semi-Major Axis Upper Unc. [au]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbsmaxerr2 IS 'Orbit Semi-Major Axis Lower Unc. [au]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbsmaxlim IS 'Orbit Semi-Major Axis Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_rade IS 'Planet Radius [Earth Radius]';
COMMENT ON COLUMN nasa_exoplanet.pl_radeerr1 IS 'Planet Radius Upper Unc. [Earth Radius]';
COMMENT ON COLUMN nasa_exoplanet.pl_radeerr2 IS 'Planet Radius Lower Unc. [Earth Radius]';
COMMENT ON COLUMN nasa_exoplanet.pl_radelim IS 'Planet Radius Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_radj IS 'Planet Radius [Jupiter Radius]';
COMMENT ON COLUMN nasa_exoplanet.pl_radjerr1 IS 'Planet Radius Upper Unc. [Jupiter Radius]';
COMMENT ON COLUMN nasa_exoplanet.pl_radjerr2 IS 'Planet Radius Lower Unc. [Jupiter Radius]';
COMMENT ON COLUMN nasa_exoplanet.pl_radjlim IS 'Planet Radius Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_masse IS 'Planet Mass [Earth Mass]';
COMMENT ON COLUMN nasa_exoplanet.pl_masseerr1 IS 'Planet Mass [Earth Mass] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_masseerr2 IS 'Planet Mass [Earth Mass] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_masselim IS 'Planet Mass [Earth Mass] Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_massj IS 'Planet Mass [Jupiter Mass]';
COMMENT ON COLUMN nasa_exoplanet.pl_massjerr1 IS 'Planet Mass [Jupiter Mass] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_massjerr2 IS 'Planet Mass [Jupiter Mass] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_massjlim IS 'Planet Mass [Jupiter Mass] Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_msinie IS 'Planet Mass*sin(i) [Earth Mass]';
COMMENT ON COLUMN nasa_exoplanet.pl_msinieerr1 IS 'Planet Mass*sin(i) [Earth Mass] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_msinieerr2 IS 'Planet Mass*sin(i) [Earth Mass] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_msinielim IS 'Planet Mass*sin(i) [Earth Mass] Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_msinij IS 'Planet Mass*sin(i) [Jupiter Mass]';
COMMENT ON COLUMN nasa_exoplanet.pl_msinijerr1 IS 'Planet Mass*sin(i) [Jupiter Mass] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_msinijerr2 IS 'Planet Mass*sin(i) [Jupiter Mass] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_msinijlim IS 'Planet Mass*sin(i) [Jupiter Mass] Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_cmasse IS 'Planet Mass*sin(i)/sin(i) [Earth Mass]';
COMMENT ON COLUMN nasa_exoplanet.pl_cmasseerr1 IS 'Planet Mass*sin(i)/sin(i) [Earth Mass] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_cmasseerr2 IS 'Planet Mass*sin(i)/sin(i) [Earth Mass] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_cmasselim IS 'Planet Mass*sin(i)/sin(i) [Earth Mass] Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_cmassj IS 'Planet Mass*sin(i)/sin(i) [Jupiter Mass]';
COMMENT ON COLUMN nasa_exoplanet.pl_cmassjerr1 IS 'Planet Mass*sin(i)/sin(i) [Jupiter Mass] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_cmassjerr2 IS 'Planet Mass*sin(i)/sin(i) [Jupiter Mass] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_cmassjlim IS 'Planet Mass*sin(i)/sin(i) [Jupiter Mass] Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_bmasse IS 'Planet Mass or Mass*sin(i) [Earth Mass]';
COMMENT ON COLUMN nasa_exoplanet.pl_bmasseerr1 IS 'Planet Mass or Mass*sin(i) [Earth Mass] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_bmasseerr2 IS 'Planet Mass or Mass*sin(i) [Earth Mass] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_bmasselim IS 'Planet Mass or Mass*sin(i) [Earth Mass] Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_bmassj IS 'Planet Mass or Mass*sin(i) [Jupiter Mass]';
COMMENT ON COLUMN nasa_exoplanet.pl_bmassjerr1 IS 'Planet Mass or Mass*sin(i) [Jupiter Mass] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_bmassjerr2 IS 'Planet Mass or Mass*sin(i) [Jupiter Mass] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_bmassjlim IS 'Planet Mass or Mass*sin(i) [Jupiter Mass] Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_bmassprov IS 'Planet Mass or Mass*sin(i) Provenance';
COMMENT ON COLUMN nasa_exoplanet.pl_dens IS 'Planet Density [g/cm**3]';
COMMENT ON COLUMN nasa_exoplanet.pl_denserr1 IS 'Planet Density Upper Unc. [g/cm**3]';
COMMENT ON COLUMN nasa_exoplanet.pl_denserr2 IS 'Planet Density Lower Unc. [g/cm**3]';
COMMENT ON COLUMN nasa_exoplanet.pl_denslim IS 'Planet Density Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_orbeccen IS 'Eccentricity';
COMMENT ON COLUMN nasa_exoplanet.pl_orbeccenerr1 IS 'Eccentricity Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_orbeccenerr2 IS 'Eccentricity Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_orbeccenlim IS 'Eccentricity Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_insol IS 'Insolation Flux [Earth Flux]';
COMMENT ON COLUMN nasa_exoplanet.pl_insolerr1 IS 'Insolation Flux Upper Unc. [Earth Flux]';
COMMENT ON COLUMN nasa_exoplanet.pl_insolerr2 IS 'Insolation Flux Lower Unc. [Earth Flux]';
COMMENT ON COLUMN nasa_exoplanet.pl_insollim IS 'Insolation Flux Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_eqt IS 'Equilibrium Temperature [K]';
COMMENT ON COLUMN nasa_exoplanet.pl_eqterr1 IS 'Equilibrium Temperature Upper Unc. [K]';
COMMENT ON COLUMN nasa_exoplanet.pl_eqterr2 IS 'Equilibrium Temperature Lower Unc. [K]';
COMMENT ON COLUMN nasa_exoplanet.pl_eqtlim IS 'Equilibrium Temperature Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_orbincl IS 'Inclination [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbinclerr1 IS 'Inclination Upper Unc. [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbinclerr2 IS 'Inclination Lower Unc. [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbincllim IS 'Inclination Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_tranmid IS 'Transit Midpoint [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_tranmiderr1 IS 'Transit Midpoint Upper Unc. [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_tranmiderr2 IS 'Transit Midpoint Lower Unc. [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_tranmidlim IS 'Transit Midpoint Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_tsystemref IS 'Time Reference Frame and Standard';
COMMENT ON COLUMN nasa_exoplanet.ttv_flag IS 'Data show Transit Timing Variations';
COMMENT ON COLUMN nasa_exoplanet.pl_imppar IS 'Impact Parameter';
COMMENT ON COLUMN nasa_exoplanet.pl_impparerr1 IS 'Impact Parameter Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_impparerr2 IS 'Impact Parameter Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_impparlim IS 'Impact Parameter Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_trandep IS 'Transit Depth [%]';
COMMENT ON COLUMN nasa_exoplanet.pl_trandeperr1 IS 'Transit Depth Upper Unc. [%]';
COMMENT ON COLUMN nasa_exoplanet.pl_trandeperr2 IS 'Transit Depth Lower Unc. [%]';
COMMENT ON COLUMN nasa_exoplanet.pl_trandeplim IS 'Transit Depth Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_trandur IS 'Transit Duration [hours]';
COMMENT ON COLUMN nasa_exoplanet.pl_trandurerr1 IS 'Transit Duration Upper Unc. [hours]';
COMMENT ON COLUMN nasa_exoplanet.pl_trandurerr2 IS 'Transit Duration Lower Unc. [hours]';
COMMENT ON COLUMN nasa_exoplanet.pl_trandurlim IS 'Transit Duration Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_ratdor IS 'Ratio of Semi-Major Axis to Stellar Radius';
COMMENT ON COLUMN nasa_exoplanet.pl_ratdorerr1 IS 'Ratio of Semi-Major Axis to Stellar Radius Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_ratdorerr2 IS 'Ratio of Semi-Major Axis to Stellar Radius Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_ratdorlim IS 'Ratio of Semi-Major Axis to Stellar Radius Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_ratror IS 'Ratio of Planet to Stellar Radius';
COMMENT ON COLUMN nasa_exoplanet.pl_ratrorerr1 IS 'Ratio of Planet to Stellar Radius Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_ratrorerr2 IS 'Ratio of Planet to Stellar Radius Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.pl_ratrorlim IS 'Ratio of Planet to Stellar Radius Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_occdep IS 'Occultation Depth [%]';
COMMENT ON COLUMN nasa_exoplanet.pl_occdeperr1 IS 'Occultation Depth Upper Unc. [%]';
COMMENT ON COLUMN nasa_exoplanet.pl_occdeperr2 IS 'Occultation Depth Lower Unc. [%]';
COMMENT ON COLUMN nasa_exoplanet.pl_occdeplim IS 'Occultation Depth Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_orbtper IS 'Epoch of Periastron [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbtpererr1 IS 'Epoch of Periastron Upper Unc. [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbtpererr2 IS 'Epoch of Periastron Lower Unc. [days]';
COMMENT ON COLUMN nasa_exoplanet.pl_orbtperlim IS 'Epoch of Periastron Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_orblper IS 'Argument of Periastron [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_orblpererr1 IS 'Argument of Periastron Upper Unc. [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_orblpererr2 IS 'Argument of Periastron Lower Unc. [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_orblperlim IS 'Argument of Periastron Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_rvamp IS 'Radial Velocity Amplitude [m/s]';
COMMENT ON COLUMN nasa_exoplanet.pl_rvamperr1 IS 'Radial Velocity Amplitude Upper Unc. [m/s]';
COMMENT ON COLUMN nasa_exoplanet.pl_rvamperr2 IS 'Radial Velocity Amplitude Lower Unc. [m/s]';
COMMENT ON COLUMN nasa_exoplanet.pl_rvamplim IS 'Radial Velocity Amplitude Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_projobliq IS 'Projected Obliquity [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_projobliqerr1 IS 'Projected Obliquity Upper Unc. [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_projobliqerr2 IS 'Projected Obliquity Lower Unc. [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_projobliqlim IS 'Projected Obliquity Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.pl_trueobliq IS 'True Obliquity [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_trueobliqerr1 IS 'True Obliquity Upper Unc. [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_trueobliqerr2 IS 'True Obliquity Lower Unc. [deg]';
COMMENT ON COLUMN nasa_exoplanet.pl_trueobliqlim IS 'True Obliquity Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_refname IS 'Stellar Parameter Reference';
COMMENT ON COLUMN nasa_exoplanet.st_spectype IS 'Spectral Type';
COMMENT ON COLUMN nasa_exoplanet.st_teff IS 'Stellar Effective Temperature [K]';
COMMENT ON COLUMN nasa_exoplanet.st_tefferr1 IS 'Stellar Effective Temperature Upper Unc. [K]';
COMMENT ON COLUMN nasa_exoplanet.st_tefferr2 IS 'Stellar Effective Temperature Lower Unc. [K]';
COMMENT ON COLUMN nasa_exoplanet.st_tefflim IS 'Stellar Effective Temperature Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_rad IS 'Stellar Radius [Solar Radius]';
COMMENT ON COLUMN nasa_exoplanet.st_raderr1 IS 'Stellar Radius Upper Unc. [Solar Radius]';
COMMENT ON COLUMN nasa_exoplanet.st_raderr2 IS 'Stellar Radius Lower Unc. [Solar Radius]';
COMMENT ON COLUMN nasa_exoplanet.st_radlim IS 'Stellar Radius Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_mass IS 'Stellar Mass [Solar mass]';
COMMENT ON COLUMN nasa_exoplanet.st_masserr1 IS 'Stellar Mass Upper Unc. [Solar mass]';
COMMENT ON COLUMN nasa_exoplanet.st_masserr2 IS 'Stellar Mass Lower Unc. [Solar mass]';
COMMENT ON COLUMN nasa_exoplanet.st_masslim IS 'Stellar Mass Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_met IS 'Stellar Metallicity [dex]';
COMMENT ON COLUMN nasa_exoplanet.st_meterr1 IS 'Stellar Metallicity Upper Unc. [dex]';
COMMENT ON COLUMN nasa_exoplanet.st_meterr2 IS 'Stellar Metallicity Lower Unc. [dex]';
COMMENT ON COLUMN nasa_exoplanet.st_metlim IS 'Stellar Metallicity Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_metratio IS 'Stellar Metallicity Ratio';
COMMENT ON COLUMN nasa_exoplanet.st_lum IS 'Stellar Luminosity [log(Solar)]';
COMMENT ON COLUMN nasa_exoplanet.st_lumerr1 IS 'Stellar Luminosity Upper Unc. [log(Solar)]';
COMMENT ON COLUMN nasa_exoplanet.st_lumerr2 IS 'Stellar Luminosity Lower Unc. [log(Solar)]';
COMMENT ON COLUMN nasa_exoplanet.st_lumlim IS 'Stellar Luminosity Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_logg IS 'Stellar Surface Gravity [log10(cm/s**2)]';
COMMENT ON COLUMN nasa_exoplanet.st_loggerr1 IS 'Stellar Surface Gravity Upper Unc. [log10(cm/s**2)]';
COMMENT ON COLUMN nasa_exoplanet.st_loggerr2 IS 'Stellar Surface Gravity Lower Unc. [log10(cm/s**2)]';
COMMENT ON COLUMN nasa_exoplanet.st_logglim IS 'Stellar Surface Gravity Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_age IS 'Stellar Age [Gyr]';
COMMENT ON COLUMN nasa_exoplanet.st_ageerr1 IS 'Stellar Age Upper Unc. [Gyr]';
COMMENT ON COLUMN nasa_exoplanet.st_ageerr2 IS 'Stellar Age Lower Unc. [Gyr]';
COMMENT ON COLUMN nasa_exoplanet.st_agelim IS 'Stellar Age Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_dens IS 'Stellar Density [g/cm**3]';
COMMENT ON COLUMN nasa_exoplanet.st_denserr1 IS 'Stellar Density Upper Unc. [g/cm**3]';
COMMENT ON COLUMN nasa_exoplanet.st_denserr2 IS 'Stellar Density Lower Unc. [g/cm**3]';
COMMENT ON COLUMN nasa_exoplanet.st_denslim IS 'Stellar Density Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_vsin IS 'Stellar Rotational Velocity [km/s]';
COMMENT ON COLUMN nasa_exoplanet.st_vsinerr1 IS 'Stellar Rotational Velocity [km/s] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.st_vsinerr2 IS 'Stellar Rotational Velocity [km/s] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.st_vsinlim IS 'Stellar Rotational Velocity Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_rotp IS 'Stellar Rotational Period [days]';
COMMENT ON COLUMN nasa_exoplanet.st_rotperr1 IS 'Stellar Rotational Period [days] Upper Unc.';
COMMENT ON COLUMN nasa_exoplanet.st_rotperr2 IS 'Stellar Rotational Period [days] Lower Unc.';
COMMENT ON COLUMN nasa_exoplanet.st_rotplim IS 'Stellar Rotational Period Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.st_radv IS 'Systemic Radial Velocity [km/s]';
COMMENT ON COLUMN nasa_exoplanet.st_radverr1 IS 'Systemic Radial Velocity Upper Unc. [km/s]';
COMMENT ON COLUMN nasa_exoplanet.st_radverr2 IS 'Systemic Radial Velocity Lower Unc. [km/s]';
COMMENT ON COLUMN nasa_exoplanet.st_radvlim IS 'Systemic Radial Velocity Limit Flag';
COMMENT ON COLUMN nasa_exoplanet.sy_refname IS 'System Parameter Reference';
COMMENT ON COLUMN nasa_exoplanet.rastr IS 'RA [sexagesimal]';
COMMENT ON COLUMN nasa_exoplanet.ra IS 'RA [deg]';
COMMENT ON COLUMN nasa_exoplanet.decstr IS 'Dec [sexagesimal]';
COMMENT ON COLUMN nasa_exoplanet.dec IS 'Dec [deg]';
COMMENT ON COLUMN nasa_exoplanet.glat IS 'Galactic Latitude [deg]';
COMMENT ON COLUMN nasa_exoplanet.glon IS 'Galactic Longitude [deg]';
COMMENT ON COLUMN nasa_exoplanet.elat IS 'Ecliptic Latitude [deg]';
COMMENT ON COLUMN nasa_exoplanet.elon IS 'Ecliptic Longitude [deg]';
COMMENT ON COLUMN nasa_exoplanet.sy_pm IS 'Total Proper Motion [mas/yr]';
COMMENT ON COLUMN nasa_exoplanet.sy_pmerr1 IS 'Total Proper Motion Upper Unc [mas/yr]';
COMMENT ON COLUMN nasa_exoplanet.sy_pmerr2 IS 'Total Proper Motion Lower Unc [mas/yr]';
COMMENT ON COLUMN nasa_exoplanet.sy_pmra IS 'Proper Motion (RA) [mas/yr]';
COMMENT ON COLUMN nasa_exoplanet.sy_pmraerr1 IS 'Proper Motion (RA) [mas/yr] Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_pmraerr2 IS 'Proper Motion (RA) [mas/yr] Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_pmdec IS 'Proper Motion (Dec) [mas/yr]';
COMMENT ON COLUMN nasa_exoplanet.sy_pmdecerr1 IS 'Proper Motion (Dec) [mas/yr] Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_pmdecerr2 IS 'Proper Motion (Dec) [mas/yr] Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_dist IS 'Distance [pc]';
COMMENT ON COLUMN nasa_exoplanet.sy_disterr1 IS 'Distance [pc] Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_disterr2 IS 'Distance [pc] Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_plx IS 'Parallax [mas]';
COMMENT ON COLUMN nasa_exoplanet.sy_plxerr1 IS 'Parallax [mas] Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_plxerr2 IS 'Parallax [mas] Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_bmag IS 'B (Johnson) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_bmagerr1 IS 'B (Johnson) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_bmagerr2 IS 'B (Johnson) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_vmag IS 'V (Johnson) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_vmagerr1 IS 'V (Johnson) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_vmagerr2 IS 'V (Johnson) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_jmag IS 'J (2MASS) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_jmagerr1 IS 'J (2MASS) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_jmagerr2 IS 'J (2MASS) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_hmag IS 'H (2MASS) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_hmagerr1 IS 'H (2MASS) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_hmagerr2 IS 'H (2MASS) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_kmag IS 'Ks (2MASS) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_kmagerr1 IS 'Ks (2MASS) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_kmagerr2 IS 'Ks (2MASS) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_umag IS 'u (Sloan) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_umagerr1 IS 'u (Sloan) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_umagerr2 IS 'u (Sloan) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_gmag IS 'g (Sloan) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_gmagerr1 IS 'g (Sloan) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_gmagerr2 IS 'g (Sloan) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_rmag IS 'r (Sloan) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_rmagerr1 IS 'r (Sloan) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_rmagerr2 IS 'r (Sloan) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_imag IS 'i (Sloan) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_imagerr1 IS 'i (Sloan) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_imagerr2 IS 'i (Sloan) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_zmag IS 'z (Sloan) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_zmagerr1 IS 'z (Sloan) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_zmagerr2 IS 'z (Sloan) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_w1mag IS 'W1 (WISE) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_w1magerr1 IS 'W1 (WISE) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_w1magerr2 IS 'W1 (WISE) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_w2mag IS 'W2 (WISE) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_w2magerr1 IS 'W2 (WISE) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_w2magerr2 IS 'W2 (WISE) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_w3mag IS 'W3 (WISE) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_w3magerr1 IS 'W3 (WISE) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_w3magerr2 IS 'W3 (WISE) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_w4mag IS 'W4 (WISE) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_w4magerr1 IS 'W4 (WISE) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_w4magerr2 IS 'W4 (WISE) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_gaiamag IS 'Gaia Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_gaiamagerr1 IS 'Gaia Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_gaiamagerr2 IS 'Gaia Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_icmag IS 'I (Cousins) Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_icmagerr1 IS 'I (Cousins) Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_icmagerr2 IS 'I (Cousins) Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_tmag IS 'TESS Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_tmagerr1 IS 'TESS Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_tmagerr2 IS 'TESS Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_kepmag IS 'Kepler Magnitude';
COMMENT ON COLUMN nasa_exoplanet.sy_kepmagerr1 IS 'Kepler Magnitude Upper Unc';
COMMENT ON COLUMN nasa_exoplanet.sy_kepmagerr2 IS 'Kepler Magnitude Lower Unc';
COMMENT ON COLUMN nasa_exoplanet.rowupdate IS 'Date of Last Update';
COMMENT ON COLUMN nasa_exoplanet.pl_pubdate IS 'Planetary Parameter Reference Publication Date';
COMMENT ON COLUMN nasa_exoplanet.releasedate IS 'Release Date';
COMMENT ON COLUMN nasa_exoplanet.pl_nnotes IS 'Number of Notes';
COMMENT ON COLUMN nasa_exoplanet.st_nphot IS 'Number of Photometry Time Series';
COMMENT ON COLUMN nasa_exoplanet.st_nrvc IS 'Number of Radial Velocity Time Series';
COMMENT ON COLUMN nasa_exoplanet.st_nspec IS 'Number of Stellar Spectra Measurements';
COMMENT ON COLUMN nasa_exoplanet.pl_nespec IS 'Number of Eclipse Spectra';
COMMENT ON COLUMN nasa_exoplanet.pl_ntranspec IS 'Number of Transmission Spectra';
COMMENT ON COLUMN nasa_exoplanet.pl_ndispec IS 'Number of Direct Imaging Spectra';
