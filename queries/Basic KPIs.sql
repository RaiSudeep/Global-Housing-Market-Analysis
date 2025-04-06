-- Basic SQL KPIs:

-- 1. Average House Price Per Country
SELECT 
    Country, ROUND(AVG(house_price_index), 2) AS avg_house_price
FROM
    global_housing_market
GROUP BY Country;

-- 2. Total Number of Records Per Year
SELECT 
    Year, COUNT(*) AS total_records
FROM
    global_housing_market
GROUP BY Year;

-- 3. Average Rental Index Per Year
SELECT 
    Year, ROUND(AVG(Rent_index), 2) AS avg_rent_index
FROM
    global_housing_market
GROUP BY Year;

-- 4. Max & Min Mortgage Rate Per Country
SELECT 
    Country,
    ROUND(MAX(Mortgage_rate), 2) AS max_mortgage,
    ROUND(MIN(Mortgage_rate),2) AS min_mortgage
FROM
    global_housing_market
GROUP BY Country;

-- 5. Average Affordability Ratio Per Year
SELECT 
    Year, ROUND(AVG(Affordability_ratio), 2) AS avg_afforability
FROM
    global_housing_market
GROUP BY Year;

-- 6. GDP Growth Rate Trends
SELECT 
    Year, ROUND(AVG(GDP_Growth), 2) AS gdp_growth_trend
FROM
    global_housing_market
GROUP BY Year;
