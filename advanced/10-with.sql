-- WITH provides a way to write auxiliary statements for 
-- use in a larger query. These statements, which are often 
-- referred to as Common Table Expressions or CTEs, can be 
-- thought of as defining temporary tables that exist just 
-- for one query. Each auxiliary statement in a WITH clause 
-- can be a SELECT, INSERT, UPDATE, or DELETE; 
-- and the WITH clause itself is attached to a primary 
-- statement that can also be a SELECT, INSERT, UPDATE, or DELETE.

WITH state_city as (
    SELECT * FROM us_cities c
    JOIN us_states s ON s.id = c.state
)

SELECT city, state_name FROM state_city;