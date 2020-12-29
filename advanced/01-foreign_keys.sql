CREATE TABLE cities (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    location point
);

CREATE TABLE weather(
    city	BIGINT REFERENCES cities(id),
    temp_lo	int, -- low temperature
	temp_hi int, -- high temperature
	prcp 	real, -- precipitation
	date 	date
);