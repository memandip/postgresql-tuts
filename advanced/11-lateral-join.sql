-- JOIN query without any conditions inside join subquery
-- SELECT s.id, s.state_name, COUNT(c.id) as counter, TO_JSON(ARRAY_AGG(c.city))
-- FROM us_states s JOIN (
--     SELECT id, state, city, county FROM us_cities
-- ) c ON c.state = s.id
-- GROUP BY s.id
-- ORDER BY counter DESC;

-- main table alias cannot be referenced inside join subquery
-- the following query throws an error
-- SELECT s.id, s.state_name, COUNT(c.id) as counter, TO_JSON(ARRAY_AGG(c.city))
-- FROM us_states s JOIN (
--     SELECT id, state, city, county FROM us_cities
--     WHERE state = s.id
--     LIMIT 100
-- ) c ON c.state = s.id
-- GROUP BY s.id
-- ORDER BY counter DESC;

-- JOIN LATERAL is here for the rescue
-- using lateral join in postgresql
-- main table alias can be referenced, inside join subquery
SELECT s.id, s.state_name, COUNT(c.id) as counter, TO_JSON(ARRAY_AGG(c.city))
FROM us_states s JOIN LATERAL (
    SELECT id, state, city, county FROM us_cities
    WHERE state = s.id
    LIMIT 100
) c ON c.state = s.id
GROUP BY s.id
ORDER BY counter DESC;