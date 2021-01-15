CREATE VIEW weather_city AS
    SELECT cities.name as city, temp_lo, temp_hi, prcp, 
        date, location
    FROM weather
    LEFT JOIN cities
    ON cities.id = weather.city;

SELECT * FROM weather_city;