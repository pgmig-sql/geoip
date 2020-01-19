
-- 34593,ru,AS,"Азия",IR,"Иран",30,"Хорасан-Резави",,,"Фарс",,Asia/Tehran,0

CREATE TABLE loc (
  geoname_id INTEGER PRIMARY KEY
, locale_code TEXT
, continent_code TEXT
, continent_name TEXT
, country_iso_code TEXT
, country_name TEXT
, subdivision_1_iso_code TEXT
, subdivision_1_name TEXT
, subdivision_2_iso_code TEXT
, subdivision_2_name TEXT
, city_name TEXT
, metro_code TEXT
, time_zone TEXT
, is_in_european_union BOOL
);

--\copy loc from 'GeoLite2-City-Locations-ru.csv' csv header delimiter ','

-- 1.0.0.0/24,2078025,2077456,,0,0,5000,-34.9281,138.5999,1000

CREATE TABLE block (
  network INET PRIMARY KEY
, geoname_id INTEGER REFERENCES loc(geoname_id)
, registered_country_geoname_id INTEGER
, represented_country_geoname_id INTEGER
, is_anonymous_proxy BOOL
, is_satellite_provider BOOL
, postal_code TEXT
, latitude DECIMAL
, longitude DECIMAL
, accuracy_radius INTEGER
);

--\copy block from 'GeoLite2-City-Blocks-IPv4.csv' csv header delimiter ','

