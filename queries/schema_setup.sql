CREATE DATABASE global_housing_market_analysis;

USE global_housing_market_analysis;

CREATE TABLE global_housing_market ( 
    Country VARCHAR(100),
	Year INT,
 	House_price_index FLOAT,
	Rent_index FLOAT,
	Affordability_ratio FLOAT,
	Mortgage_rate FLOAT,
	Inflation_rate FLOAT,
	GDP_Growth FLOAT,
	Population_Growth FLOAT,
	Urbanization_Rate FLOAT,
    Construction_index FLoat
    );

	-- 200 records of global housing market
