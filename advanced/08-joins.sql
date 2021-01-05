SELECT count(*) FROM us_states s LEFT JOIN (
    SELECT * FROM us_cities
) c ON s.id = c.state;