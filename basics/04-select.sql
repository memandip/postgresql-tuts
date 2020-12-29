-- SELECT * from weather;

-- SELECT * FROM weather ORDER BY city, temp_lo;

-- SELECT city, (temp_lo + temp_hi)/2 as temp_avg, date FROM weather;

-- SELECT max(temp_lo) FROM weather;

-- SELECT city, temp_lo FROM weather 
-- WHERE temp_lo = (
--     SELECT MAX(temp_lo) FROM weather
-- );

SELECT city, MAX(temp_lo)
    FROM weather
    GROUP BY city;