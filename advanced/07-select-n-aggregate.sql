-- 1. get sate having maximum number of cities
-- SELECT count(*) AS counter, s.state_name 
-- FROM us_cities c 
-- JOIN us_states s ON s.id = c.state
-- GROUP BY s.state_name ORDER BY counter DESC LIMIT 1;

-- 2. get state having cities greater than 1500
-- SELECT count(*) AS city_counter, s.state_name
-- FROM us_cities c
-- JOIN us_states s ON s.id = c.state
-- GROUP BY s.state_name
-- HAVING count(*) > 1500; 

-- 3. get maximum number of city count by state
-- SELECT MAX(sc.city_counter), s.id FROM (
--     SELECT count(*) AS city_counter, s.id
--     FROM us_cities c
--     JOIN us_states s ON s.id = c.state
--     GROUP BY s.id
-- ) sc;

-- 4. get state name and counter having maximum number of cities
SELECT count(*) AS city_counter, s.state_name
FROM us_cities c
JOIN us_states s ON s.id = c.state
GROUP BY s.state_name
-- HAVING count(*) = (
--     SELECT MAX(sc.city_counter) FROM (
--         SELECT count(*) AS city_counter
--         FROM us_cities c
--         JOIN us_states s ON s.id = c.state
--         GROUP BY s.id
--     ) sc
-- )
ORDER BY city_counter desc; 