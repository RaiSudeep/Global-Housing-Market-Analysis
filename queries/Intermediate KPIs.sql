-- Intermediate SQL KPIs:

-- 1. Top 5 Countries with Highest House Price Growth
SELECT 
    Country,
    ROUND((MAX(house_price_index) - MIN(house_price_index)),
            2) AS price_growth
FROM
    global_housing_market
GROUP BY Country
ORDER BY price_growth DESC
LIMIT 5;

-- 2. Inflation Rate Effect on Housing Affordability of Australia
SELECT 
    Country,
    Year,
    ROUND(AVG(Inflation_rate), 2) AS avg_inflation,
    ROUND(AVG(Affordability_ratio), 2) AS avg_affordability
FROM
    global_housing_market
WHERE Country = "Australia"
GROUP BY Country, Year;

-- 3. Urbanization Impact on Rent Prices
SELECT 
    Year,
    Country,
    ROUND(AVG(Urbanization_Rate), 2) AS avg_urbanization,
    ROUND(AVG(rent_index), 2) AS avg_rent_price
FROM
    global_housing_market
GROUP BY Year , Country;

-- 4. Most Volatile Housing Markets
SELECT 
    Country,
    ROUND(STDDEV(house_price_index), 2) AS price_volatility
FROM
    global_housing_market
GROUP BY Country;

-- 5. Detecting Economics Crisis Periods
WITH economic_crisis AS (
	SELECT 
		Country, 
		Year, 
		Inflation_rate, 
		GDP_Growth,
		ROUND(AVG(Inflation_rate) OVER (Partition by Country),2) as avg_inflation,
		ROUND(AVG(GDP_Growth) OVER (Partition by Country),2) as avg_gdp_growth
    FROM 
		global_housing_market
    )
SELECT 
    Country, Year, ROUND(Inflation_rate,2) AS Inflation_rate , ROUND(GDP_Growth,2) AS GDP_Growth
FROM
    economic_crisis
WHERE
    Inflation_rate > avg_inflation
        AND GDP_Growth < avg_gdp_growth
ORDER BY Country , Year;

-- 6. Year-over-Year (YOY) Housing Price Growth Rate
SELECT 
	Year, 
	Country,
    ROUND((House_price_index),2) AS housing_price_index,
	ROUND((House_price_index - LAG(House_price_index) OVER (PARTITION BY Country ORDER BY Year)) / 
	LAG(House_price_index) OVER (PARTITION BY Country ORDER BY Year) * 100,2) AS yoy_housing_price_growth
From 
	global_housing_market;


