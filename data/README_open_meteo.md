# Historical Weather 

## Hourly Weather Variables

## Miscellaneous
```bash
curl -o gomel-misc-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&hourly=,temperature_2m,relative_humidity_2m,dew_point_2m,apparent_temperature,precipitation_probability,precipitation,rain,showers,snowfall,snow_depth,weather_code,pressure_msl,surface_pressure,visibility,evapotranspiration,et0_fao_evapotranspiration,vapour_pressure_deficit&timezone=Europe%2FMoscow'
```

## Cloud cover
```bash
curl -o gomel-cloud_cover-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&hourly=,cloud_cover,cloud_cover_low,cloud_cover_mid,cloud_cover_high&timezone=Europe%2FMoscow'
```

## Wind
```bash
curl -o gomel-wind-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&hourly=,wind_speed_10m,wind_speed_80m,wind_speed_100m,wind_speed_120m,wind_speed_180m,wind_speed_200m,wind_direction_10m,wind_direction_80m,wind_direction_100m,wind_direction_120m,wind_direction_180m,wind_direction_200m,wind_gusts_10m&timezone=Europe%2FMoscow'
```

## Temperature
```bash
curl -o gomel-temperature-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&hourly=,temperature_80m,temperature_120m,temperature_180m,soil_temperature_0cm,soil_temperature_6cm,soil_temperature_18cm,soil_temperature_54cm,soil_moisture_0_to_1cm,soil_moisture_1_to_3cm,soil_moisture_3_to_9cm,soil_moisture_9_to_27cm,soil_moisture_27_to_81cm&timezone=Europe%2FMoscow'
```

## Additional Variables And Options
```bash
curl -o gomel-additional-vars-and-options-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&hourly=,uv_index,uv_index_clear_sky,is_day,sunshine_duration,wet_bulb_temperature_2m,total_column_integrated_water_vapour,cape,lifted_index,convective_inhibition,freezing_level_height,boundary_layer_height,hail&timezone=Europe%2FMoscow'
```

## Solar Radiation Variables
```bash
curl -o gomel-solar-radiation-vars-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&hourly=,shortwave_radiation,direct_radiation,diffuse_radiation,direct_normal_irradiance,global_tilted_irradiance,terrestrial_radiation,shortwave_radiation_instant,direct_radiation_instant,diffuse_radiation_instant,direct_normal_irradiance_instant,global_tilted_irradiance_instant,terrestrial_radiation_instant&timezone=Europe%2FMoscow'
```

## Pressure Level Variables

### Temperature
```bash
curl -o gomel-2020-01-01-2026-05-30.json ''
```

### Relative Humidity

```bash
curl -o gomel-relative-humidity-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&hourly=,relative_humidity_1000hPa,relative_humidity_975hPa,relative_humidity_950hPa,relative_humidity_925hPa,relative_humidity_900hPa,relative_humidity_850hPa,relative_humidity_800hPa,relative_humidity_700hPa,relative_humidity_600hPa,relative_humidity_500hPa,relative_humidity_400hPa,relative_humidity_300hPa,relative_humidity_250hPa,relative_humidity_200hPa,relative_humidity_150hPa,relative_humidity_100hPa,relative_humidity_70hPa,relative_humidity_50hPa,relative_humidity_30hPa&timezone=Europe%2FMoscow'
```

### Cloud Cover
```bash
curl -o gomel-2020-01-01-2026-05-30.json ''
```

### Wind Speed
```bash
curl -o gomel-2020-01-01-2026-05-30.json ''
```

### Wind Direction
```bash
curl -o gomel-2020-01-01-2026-05-30.json ''
```

### Geopotential height
```bash
curl -o gomel-geopotential_height-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&hourly=,geopotential_height_1000hPa,geopotential_height_975hPa,geopotential_height_950hPa,geopotential_height_925hPa,geopotential_height_900hPa,geopotential_height_850hPa,geopotential_height_800hPa,geopotential_height_700hPa,geopotential_height_600hPa,geopotential_height_500hPa,geopotential_height_400hPa,geopotential_height_300hPa,geopotential_height_250hPa,geopotential_height_200hPa,geopotential_height_150hPa,geopotential_height_100hPa,geopotential_height_70hPa,geopotential_height_50hPa,geopotential_height_30hPa&timezone=Europe%2FMoscow'
```

## Weather models

### Miscellaneous

```bash
curl -o gomel-weather-models-misc-2020-01-01-2026-05-30.json 'https://historical-forecast-api.open-meteo.com/v1/forecast?latitude=52.40773&longitude=31.057514&start_date=2020-01-01&end_date=2026-05-30&models=best_match,ecmwf_ifs,ecmwf_ifs025,ecmwf_aifs025_single,cma_grapes_global,bom_access_global&timezone=Europe%2FMoscow'
```

## 15-Minutely Weather Variables
```bash
curl -o gomel-2020-01-01-2026-05-30.json ''
```

# Air Quality

## Hourly Air Quality Variables

```bash
curl -o gomel-hourly-air-quality-vars-2020-01-01-2026-05-30.json 'https://air-quality-api.open-meteo.com/v1/air-quality?latitude=52.40773&longitude=31.057514&hourly=pm10,pm2_5,carbon_monoxide,carbon_dioxide,nitrogen_dioxide,sulphur_dioxide,ozone,aerosol_optical_depth,dust,uv_index,uv_index_clear_sky,ammonia,methane,alder_pollen,birch_pollen,grass_pollen,mugwort_pollen,olive_pollen,ragweed_pollen&timezone=Europe%2FMoscow&start_date=2020-01-01&end_date=2026-05-30'
```

## European Air Quality Index

```bash
curl -o gomel-european-air-quality-index-2020-01-01-2026-05-30.json 'https://air-quality-api.open-meteo.com/v1/air-quality?latitude=52.40773&longitude=31.057514&hourly=,european_aqi,european_aqi_pm2_5,european_aqi_pm10,european_aqi_nitrogen_dioxide,european_aqi_ozone,european_aqi_sulphur_dioxide&timezone=Europe%2FMoscow&start_date=2020-01-01&end_date=2026-05-30'
```

## United States Air Quality Index

```bash
curl -o gomel-air-quality-us-index-2020-01-01-2026-05-30.json 'https://air-quality-api.open-meteo.com/v1/air-quality?latitude=52.40773&longitude=31.057514&hourly=,us_aqi,us_aqi_pm2_5,us_aqi_pm10,us_aqi_nitrogen_dioxide,us_aqi_carbon_monoxide,us_aqi_ozone,us_aqi_sulphur_dioxide&timezone=Europe%2FMoscow&start_date=2020-01-01&end_date=2026-05-30'
```

## Additional Variables And Options

```bash
curl -o gomel-air-quality-additional-vars-and-options-2020-01-01-2026-05-30.json 'https://air-quality-api.open-meteo.com/v1/air-quality?latitude=52.40773&longitude=31.057514&hourly=,formaldehyde,glyoxal,non_methane_volatile_organic_compounds,pm10_wildfires,peroxyacyl_nitrates,secondary_inorganic_aerosol,residential_elementary_carbon,total_elementary_carbon,pm2_5_total_organic_matter,sea_salt_aerosol,nitrogen_monoxide&timezone=Europe%2FMoscow&start_date=2020-01-01&end_date=2026-05-30'
```

## Current Conditions

```bash
curl -o gomel-air-quality-current-conditions-2020-01-01-2026-05-30.json 'https://air-quality-api.open-meteo.com/v1/air-quality?latitude=52.40773&longitude=31.057514&current=european_aqi,us_aqi,pm10,pm2_5,carbon_monoxide,nitrogen_dioxide,sulphur_dioxide,ozone,aerosol_optical_depth,dust,uv_index,uv_index_clear_sky,ammonia,alder_pollen,birch_pollen,grass_pollen,mugwort_pollen,olive_pollen,ragweed_pollen&timezone=Europe%2FMoscow&start_date=2020-01-01&end_date=2026-05-30'
```

## Current Conditions

```bash
curl -o gomel-flood-2020-01-01-2026-05-30.json 'https://flood-api.open-meteo.com/v1/flood?latitude=52.40773&longitude=31.057514&daily=river_discharge,river_discharge_mean,river_discharge_median,river_discharge_max,river_discharge_min,river_discharge_p25,river_discharge_p75&models=seamless_v4,forecast_v4,consolidated_v4,seamless_v3,forecast_v3,consolidated_v3&timezone=Europe%2FMoscow&ensemble=true&start_date=2020-01-01&end_date=2026-05-30'
```

The file gomel-2020-01-01-2026-05-29.json is a minified Open-Meteo time series for one location near Gomel, with hourly timestamps from 2020-01-01 through 2026-05-29 and one measured variable: `temperature_2m` in °C. That gives you about 56k hourly observations of a single scalar field $T(t)$.

Because it is one variable over time, it is strongest for algebra and single-variable calculus. Multivariable calculus is still possible, but mostly after you reshape the problem into a surface like “temperature as a function of hour-of-day and day-of-year” or after you enrich the dataset with more weather variables.

**Algebra**
You can do classical time-series summarization and model fitting.

- Compute means, medians, variances, standard deviations, monthly averages, annual averages, seasonal averages.
- Build anomalies:
  $$
  A(t)=T(t)-\bar T_{\text{month}(t)}
  $$
  This tells you whether a given hour or day is unusually warm or cold relative to its normal month.
- Fit trend + seasonality with linear algebra:
  $$
  T(t)\approx a+bt+c_1\sin\left(\frac{2\pi t}{24}\right)+d_1\cos\left(\frac{2\pi t}{24}\right)+c_2\sin\left(\frac{2\pi t}{24\cdot365.25}\right)+d_2\cos\left(\frac{2\pi t}{24\cdot365.25}\right)
  $$
  That separates long-term warming/cooling from daily and yearly cycles.
- Do lag analysis:
  compare $T(t)$ with $T(t-1)$, $T(t-24)$, $T(t-168)$ to quantify persistence from previous hour, previous day, previous week.
- Build piecewise-linear or polynomial approximations for specific seasons.
- Cluster days or weeks by temperature profile after converting each day into a 24-dimensional vector.

Good algebra questions for this file:
- Is Gomel warming over 2020-2026?
- Which month has the largest variance?
- How much of the signal is daily cycle vs annual cycle?
- Are winters becoming less severe?

**Calculus**
Treat temperature as a continuous signal sampled hourly.

- Approximate the first derivative, the heating/cooling rate:
  $$
  \frac{dT}{dt}(t_i)\approx \frac{T_{i+1}-T_i}{\Delta t},\qquad \Delta t=1\text{ hour}
  $$
  This tells you when temperature rises or falls fastest.
- Approximate the second derivative:
  $$
  \frac{d^2T}{dt^2}(t_i)\approx \frac{T_{i+1}-2T_i+T_{i-1}}{\Delta t^2}
  $$
  This highlights turning points and rapid weather transitions.
- Find local extrema:
  when $\frac{dT}{dt}$ changes sign, you get local highs and lows.
- Compute cumulative heat/cold exposure with integrals:
  $$
  \int_{t_1}^{t_2} T(t)\,dt
  $$
  or more practically, thresholded integrals such as degree-hours:
  $$
  \int_{t_1}^{t_2} \max(T(t)-18,0)\,dt
  $$
  for cooling demand, and
  $$
  \int_{t_1}^{t_2} \max(18-T(t),0)\,dt
  $$
  for heating demand.
- Measure total variation:
  $$
  \int_{t_1}^{t_2}\left|T'(t)\right|dt
  $$
  which tells you how “volatile” temperature was in a season or year.
- Build smooth interpolants and study curvature, inflection points, and transition intensity.

Good calculus questions:
- How quickly do cold fronts pass through?
- Which year had the most volatile spring?
- How many cumulative heating degree-hours occur each winter?
- When is the annual warming rate largest, and when is the cooling rate largest?

**Multivariable Calculus**
Rawly, the dataset is only $T(t)$, so true multivariable calculus is limited. But you can create useful multivariable objects.

1. Reparameterize temperature as a 2D surface by calendar structure  
Define
$$
F(h,d)=\text{average temperature at hour }h\text{ and day-of-year }d
$$
where $h\in[0,24)$ and $d\in[1,365]$.

Then you can study:
- Gradient:
  $$
  \nabla F(h,d)=\left(\frac{\partial F}{\partial h},\frac{\partial F}{\partial d}\right)
  $$
  This tells you whether temperature changes faster across the day-night axis or across the seasonal axis.
- Hessian:
  $$
  H_F=
  \begin{bmatrix}
  \frac{\partial^2 F}{\partial h^2} & \frac{\partial^2 F}{\partial h\partial d}\\
  \frac{\partial^2 F}{\partial d\partial h} & \frac{\partial^2 F}{\partial d^2}
  \end{bmatrix}
  $$
  This helps classify ridges, troughs, and saddle-like transitions in the annual-daily temperature surface.
- Double integrals:
  $$
  \iint_R F(h,d)\,dh\,dd
  $$
  to compute average heat over parts of the calendar, such as summer afternoons.

2. Build state space from the signal and its derivative  
Define
$$
X(t)=\bigl(T(t),T'(t)\bigr)
$$
Now you can study trajectories in phase space:
- stable oscillatory patterns
- fast warming vs fast cooling regimes
- recurrence structure by season

3. Add engineered variables  
From the timestamps alone, derive:
- hour of day
- day of year
- month
- season
- weekend/weekday

Then fit
$$
T=f(h,d,y)
$$
where $y$ is year, and examine partial derivatives like
$$
\frac{\partial T}{\partial y}
$$
for long-term warming, or mixed partials like
$$
\frac{\partial^2 T}{\partial h\,\partial y}
$$
to see whether the diurnal cycle itself is changing over time.

**What This File Is Best For**
Best uses with the current file:
- seasonal decomposition
- trend estimation
- volatility analysis
- heating/cooling degree calculations
- Fourier or harmonic analysis
- anomaly detection
- surface analysis on `(hour of day, day of year)`

Less suitable with the current file alone:
- real multivariable physical weather modeling
- advection / diffusion style PDE analysis
- pressure-temperature-humidity interaction studies
- spatial gradient fields

For stronger multivariable calculus, add more Open-Meteo hourly variables for the same timestamps:
- relative humidity
- dew point
- precipitation
- pressure
- wind speed
- wind direction
- cloud cover
- shortwave radiation

Then you can build functions like
$$
T=f(\text{humidity},\text{wind},\text{pressure},\text{radiation},t)
$$
and analyze gradients, Jacobians, constrained extrema, response surfaces, and local sensitivity.

**Good Concrete Projects**
- Fit a harmonic model and estimate long-term warming trend.
- Compute hourly derivative and detect the sharpest warming/cooling events.
- Build a 2D temperature surface over hour-of-day and day-of-year, then analyze its gradient and Hessian.
- Compute annual heating degree-hours and compare winters.
- Detect outlier days using anomaly scores relative to monthly/hourly climatology.

# Math

Start from data/open-meteo/gomel-2020-01-01-2026-05-29.json: it is essentially one hourly scalar series, so the main job is to reshape it into matrices that expose seasonality, local derivatives, and supervised learning targets.

**Step 2: Transform It Into Matrices**
The raw signal is
$$
\{(t_i, T_i)\}_{i=1}^N
$$
with $T_i = \text{temperature\_2m at hour } t_i$.

Use these matrix forms:

1. Time-series design matrix for algebra/regression  
Each row is one hour.

$$
X_i = [1,\ \text{hour}_i,\ \text{dayofyear}_i,\ \text{year}_i,\ \sin(2\pi h_i/24),\ \cos(2\pi h_i/24),\ \sin(2\pi d_i/365.25),\ \cos(2\pi d_i/365.25)]
$$

Target:
$$
y_i = T_i
$$

This gives a standard linear algebra model
$$
y \approx X\beta
$$
for trend + daily cycle + annual cycle.

2. Daily-profile matrix  
Reshape into one row per day, 24 columns per row:

$$
D \in \mathbb{R}^{m \times 24}, \qquad D_{k,h}=T(\text{day }k,\text{ hour }h)
$$

What this enables:
- PCA / SVD on daily shapes
- clustering days into “winter inversion”, “mild cloudy”, “hot summer” profiles
- norms/distances between days
- low-rank approximation

3. Calendar surface for multivariable calculus  
Average across years by hour-of-day and day-of-year:

$$
F(d,h)=\text{mean temperature for day-of-year }d\text{ at hour }h
$$

This gives a surface
$$
F: \mathbb{R}^2 \to \mathbb{R}
$$
where inputs are seasonal position and hour. Then you can compute:
- $\partial F/\partial h$: diurnal heating/cooling rate
- $\partial F/\partial d$: seasonal warming/cooling rate
- Hessian of $F$: curvature of the calendar-temperature surface

4. Lagged state matrix for dynamics  
For each hour, build a row from recent history:

$$
X_i = [T_i,\ T_{i-1},\ T_{i-2},\ T_{i-24},\ T_{i-48},\ T_{i-168}]
$$

Possible targets:
- next hour temperature: $y_i=T_{i+1}$
- next 24-hour max/min
- temperature change: $y_i=T_{i+1}-T_i$

This is the cleanest representation for forecasting.

5. Derivative-enhanced matrix  
Approximate derivatives with finite differences:

$$
T'_i \approx T_{i+1}-T_i,\qquad
T''_i \approx T_{i+1}-2T_i+T_{i-1}
$$

Then use rows like
$$
X_i = [T_i,\ T'_i,\ T''_i,\ h_i,\ d_i]
$$

That is useful for regime detection and local geometric analysis.

6. Threshold / energy matrix  
Engineer nonlinear features:
- heating deficit: $\max(18-T_i,0)$
- cooling load: $\max(T_i-18,0)$
- freeze indicator: $\mathbf{1}[T_i<0]$
- heat indicator: $\mathbf{1}[T_i>25]$

Then aggregate by day/week/month.

**Best Matrix For Multivariable Calculus**
The most natural one is the calendar surface:
$$
F(d,h)
$$
because it turns your scalar time series into a 2-variable function. Then:
$$
\nabla F(d,h)=\left(\frac{\partial F}{\partial d},\frac{\partial F}{\partial h}\right)
$$
tells you whether temperature changes more strongly along season or time-of-day.

You can also define a 3-variable function:
$$
G(d,h,y)=T
$$
where $y$ is year, and inspect
$$
\frac{\partial G}{\partial y}
$$
as a warming trend and mixed partials like
$$
\frac{\partial^2 G}{\partial h\,\partial y}
$$
to test whether the daily cycle is changing over the years.

# ML
With this file alone, the realistic ML tasks are time-series and representation-learning tasks.

1. Next-hour temperature forecasting  
Predict
$$
T_{t+1}
$$
from recent lags and calendar features.

Models:
- linear regression
- ridge/lasso
- random forest / gradient boosting
- LSTM / temporal CNN if you want sequence models

2. Next-24-hour forecast  
Predict the vector
$$
[T_{t+1},\dots,T_{t+24}]
$$
This is a multi-output regression task.

3. Daily min/max prediction  
Use early-day hours or lagged context to predict:
- daily maximum temperature
- daily minimum temperature
- daily temperature range

4. Temperature anomaly detection  
Train a baseline seasonal model and flag residuals:
$$
r_t=T_t-\hat T_t
$$
Large $|r_t|$ indicates unusual conditions.
This is useful for detecting cold snaps, heat spikes, sensor issues, or abrupt weather changes.

5. Day-type clustering  
Use the daily-profile matrix $D$ and cluster days into groups:
- cold stable winter days
- rapidly warming spring days
- hot summer days
- transitional autumn days

Good tools:
- k-means
- hierarchical clustering
- Gaussian mixtures

6. Regime classification  
Turn the series into labels like:
- freezing / non-freezing
- heatwave / normal / cold spell
- stable / volatile day

Then train a classifier from lagged temperatures and calendar features.

7. Change-point detection  
Detect structural breaks:
- seasonal transition points
- abrupt cold front passages
- possible long-term drift changes

This can be framed as:
- unsupervised segmentation
- binary classification on “regime changed in next $k$ hours”

8. Dimensionality reduction of daily weather shape  
Apply PCA/SVD to the daily matrix:
$$
D \approx U\Sigma V^\top
$$
Then:
- first components capture typical winter/summer structure
- low-dimensional embeddings can be used for clustering or downstream ML

9. Heating demand proxy modeling  
Even without actual building data, you can model synthetic demand proxies such as heating degree-hours:
$$
H_t=\max(18-T_t,0)
$$
Then predict daily or weekly heating load.
This is useful if your goal is energy analytics.

10. Synthetic classification benchmarks  
Create labels from future behavior:
- will temperature cross $0^\circ C$ in next 12 hours?
- will tomorrow’s max exceed today’s max?
- will next 24 hours have range above a threshold?

These become supervised classification problems.

**What You Cannot Do Well With This File Alone**
Because you only have temperature, not humidity/wind/pressure/precipitation:
- no strong multivariate physical forecasting
- no weather-front attribution
- no comfort/heat-index modeling
- no spatial models
- no PDE-style meteorological field analysis

If you add more Open-Meteo variables at the same timestamps, the ML space gets much better:
- multivariate forecasting
- feature importance and sensitivity
- Jacobian / gradient analysis in feature space
- weather regime classification from full atmospheric state

**Recommended Practical Setup**
If you want one clean mathematical dataset version, build this table:

| Feature | Meaning |
|---|---|
| `t` | sequential hour index |
| `timestamp` | ISO time |
| `temp` | temperature |
| `hour` | 0-23 |
| `day_of_year` | 1-366 |
| `month` | 1-12 |
| `year` | calendar year |
| `sin_hour`, `cos_hour` | daily cycle encoding |
| `sin_doy`, `cos_doy` | annual cycle encoding |
| `temp_lag_1`, `temp_lag_2`, `temp_lag_24`, `temp_lag_168` | short and seasonal memory |
| `dtemp` | first difference |
| `ddtemp` | second difference |
| `target_next_1h` | forecast target |
| `target_next_24h_max` | daily forecast target |
| `anomaly` | residual from climatology |
