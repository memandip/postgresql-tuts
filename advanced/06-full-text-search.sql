-- SELECT c.city || ', ' || c.county || ', ' || s.state_name 
-- AS document 
-- FROM us_cities c, us_states s
-- WHERE c.state = s.id
-- AND TO_TSVECTOR(
--     c.city || ', ' || c.county || ', ' || s.state_name
-- ) @@ TO_TSQUERY('aleutians | alaska');

-- SELECT * FROM us_states
-- WHERE TO_TSVECTOR(state_name)
-- @@ TO_TSQUERY('(District & columbia) | COLORADO');

SELECT * FROM us_cities
WHERE TO_TSVECTOR(city || ', ' ||county)
@@ TO_TSQUERY('Skagway | Hoonah | Angoon');