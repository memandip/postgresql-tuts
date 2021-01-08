-- SELECT count(*) FROM us_states s LEFT JOIN (
--     SELECT * FROM us_cities
-- ) c ON s.id = c.state 
-- WHERE county LIKE '%Bea%';

-- SELECT COUNT(*) FROM us_states;

-- SELECT * FROM us_cities
-- WHERE county LIKE '%Bea%';

SELECT * FROM us_cities 
WHERE id = (SELECT MAX(id) FROM us_cities);