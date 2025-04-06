-- Advance SQL KPIs:

-- 1. Rolling Average House Price Index Over 3 Years
SELECT 
	Country, 
    Year,
	AVG(House_price_index) OVER (PARTITION BY Country ORDER BY Year ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS rolling_avg_price
FROM 
	global_housing_market;

-- 2. Ranking Countries by Annual House Price Growth
SELECT 
	Country, 
	Year, 
	House_price_index,
	RANK() OVER (PARTITION BY Year ORDER BY House_price_index DESC) AS housing_price_rank
FROM 
	global_housing_market ;

-- 3. Identifying the largest Year-to-Year Price Jumps
WITH pricegrowth AS (
	SELECT 
		Country,
        Year,
		ROUND((House_price_index),2) AS housing_price_index,
		ROUND(LAG(House_price_index) OVER (PARTITION BY Country ORDER BY Year),2) AS prev_year_price
	From 
		global_housing_market
)
SELECT 
	Country,
    Year,
    housing_price_index,
    prev_year_price,
    ROUND((housing_price_index - prev_year_price),2) AS price_change
FROM
	pricegrowth
WHERE prev_year_price IS NOT NULL
ORDER BY price_change DESC
LIMIT 10;

-- 4. Calculating Cumulative GDP Growth Over Time
SELECT
	Country,
    Year,
    ROUND(GDP_Growth,2) AS gdp_growth,
    ROUND(SUM(GDP_Growth) OVER (PARTITION BY Country ORDER BY Year),2) AS cummulative_gdp_growth
FROM
	global_housing_market;
    
-- 5. Tracking Urbanization Rate Change Over Time
WITH UrbanRate AS (
	SELECT
		Country,
        Year,
        Urbanization_Rate,
        LAG(Urbanization_Rate) OVER (PARTITION BY Country ORDER BY Year) AS prev_urbanization
	FROM
		global_housing_market
)
SELECT
	Country,
    Year,
    Urbanization_Rate,
    prev_urbanization,
    ROUND((Urbanization_Rate - prev_urbanization),2) AS urbanization_change
FROM
	UrbanRate
WHERE prev_urbanization IS NOT NULL
ORDER BY urbanization_change DESC;

-- 6. Comparing Housing Affordability by Mortgage Rate
SELECT
	Country,
    Year,
    Affordability_ratio,
    Mortgage_rate,
    NTILE(4) OVER (ORDER BY Mortgage_rate) AS Mortgage_quartile
FROM
	global_housing_market;
    
-- 7. Forecasting Future Housing Market Trends with Moving Averages
WITH moving_avg AS (
	SELECT 
		Country,
        Year,
        House_price_index,
        ROUND(AVG(House_price_index) OVER (PARTITION BY Country ORDER BY Year ROWS BETWEEN 2 PRECEDING AND CURRENT ROW),3) AS moving_avg_price
	FROM
		global_housing_market
)
SELECT
	Country,
    Year,
    House_price_index,
    moving_avg_price
FROM moving_avg;
