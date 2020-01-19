# geoip
pg store for Maxmind ip database csv


## Usage

```
\copy geoip.loc from 'GeoLite2-City-Locations-ru.csv' csv header delimiter ','
\copy geoip.block from 'GeoLite2-City-Blocks-IPv4.csv' csv header delimiter ','
```
