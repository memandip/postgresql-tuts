-- GROUP_CONCAT ~ ARRAY_AGG in mysql
-- separator value is userdefined, | is used in this example
-- syntax in mysql GROUP_CONCAT(column_name SEPARATOR ' | ')
-- note:
-- although ARRAY_AGG also works with json objects
-- use JSON_AGG for json data

SELECT s.state_name, 
    ARRAY_AGG(c.id) as cityIds, 
    ARRAY_AGG(c.county) as counties,
    ARRAY_AGG(c.city) as cities,
    JSON_AGG(
        JSON_BUILD_OBJECT(
            'lat', c.latitude, 
            'lng', c.longitude,
            'county', c.county,
            'city', c.city
        )
    ) as cityDetails 
FROM us_cities c
LEFT JOIN us_states s ON s.id = c.state
GROUP BY s.state_name;