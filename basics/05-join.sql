SELECT * from weather 
INNER JOIN cities 
ON weather.city = cities.name;