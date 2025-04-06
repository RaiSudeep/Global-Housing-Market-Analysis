# 🏡 Global-Housing-Market-Analysis (2015 - 2024)
💾 Data Processing: MySQL | 

## 🔗 Source: Kaggle Dataset
Global Housing Market Dataset  
[🔗 Kaggle Dataset](https://www.kaggle.com/datasets/atharvasoundankar/global-housing-market-analysis-2015-2024)  

## 📑 Dataset Overview  
This dataset provides insights into the **global housing market**, covering economic trends such as **house price indices, affordability ratios, rent trends, mortgage rates, GDP growth, inflation, urbanization rates, and population growth** from **2015 to 2024**.

### **Columns Included:**  
- **Country** → Location of housing data collection 🌍  
- **Year** → The year of observation 📅  
- **House Price Index** → Fluctuation in housing prices 💰  
- **Rent Index** → Rental market trends 🏠  
- **Affordability Ratio** → Economic feasibility for households 🏡  
- **Mortgage Rate (%)** → Interest rates affecting home purchases 📉  
- **Inflation Rate (%)** → Yearly inflation trend 📊  
- **GDP Growth (%)** → Economic expansion or contraction 📈  
- **Population Growth (%)** → Annual population growth 👥  
- **Urbanization Rate (%)** → Percentage of people living in urban areas 🏙️  

---

## 📖 Introduction  
Housing markets fluctuate based on **economic stability, mortgage rates, urban development, and inflation trends**. This analysis helps **investors, policymakers, and researchers** make data-driven decisions by applying **SQL-based business analytics** to identify patterns, crisis periods, and future market predictions.

---

## 📊 SQL-Based Business Analytics (MySQL) 

This section focuses on data extraction, transformation, and analysis using SQL queries.

## 📈 Business KPIs

### A. **Basic Level KPIs**  

| **KPI**                                    | **Description** |
|-------------------------------------------|---------------|
| **Average House Price Per Country**       | Calculates the mean house price index for each country |
| **Total Number of Records Per Year**      | Counts data entries to analyze trends per year |
| **Average Rental Index Per Year**         | Computes average rental values per year |
| **Max & Min Mortgage Rate Per Country**   | Determines highest & lowest mortgage rates per country |
| **GDP Growth Rate Trends**                | Observes fluctuations in GDP growth across years |
| **Average Affordability Ratio Per Year**  | Evaluates affordability conditions for home buyers |

---

### B. **Intermediate Level KPIs** 

| **KPI**                                    | **Description** |
|-------------------------------------------|---------------|
| **Top 5 Countries with Highest House Price Growth**  | Tracks fastest-growing housing markets |
| **Detecting Economic Crisis Periods**      | Identifies extreme inflation and GDP decline using **CTEs** |
| **YOY Housing Price Growth Rate**          | Measures year-over-year price fluctuations per country |
| **Urbanization Impact on Rent Prices**     | Analyzes how urbanization affects rental costs |
| **Most Volatile Housing Markets**          | Identifies markets with **high standard deviation** in house prices |
| **Inflation Rate Effect on Affordability (Australia)** | Examines the correlation between inflation and housing affordability |

---

### C. **Advance Level KPIs**  

| **KPI**                                    | **Description** |
|-------------------------------------------|---------------|
| **Rolling Average House Price Index Over 3 Years**  | Implements **moving averages** for trend smoothing |
| **Ranking Countries by Annual House Price Growth** | Tracks top-growing housing markets using **RANK()** |
| **Forecasting Future Housing Trends**    | Predicts upcoming house price trends with SQL analytics |
| **Tracking Urbanization Rate Changes Over Time**  | Observes urbanization shifts with **LAG()** functions |
| **Cumulative GDP Growth Over Time**       | Analyzes cumulative GDP growth by country |
| **Comparing Housing Affordability by Mortgage Rate**  | Segments mortgage rates into **quartiles** for affordability analysis |

---

## 📊 Expected Outcomes & Insights  
✔ **Identify Housing Price Trends** → Determine whether prices are increasing or declining per region.  
✔ **Economic Crisis Detection** → Spot years with **high inflation** and **low GDP growth** using SQL analytics.  
✔ **Market Volatility Analysis** → Understand **which countries** experience sharp fluctuations in **house prices**.  
✔ **Urbanization Impact on Rent Affordability** → Explore how population shifts impact **rental markets**.  
✔ **Future Price Forecasting** → Predict upcoming trends using **moving averages** and **statistical analysis**.  

---

## 🛠 Technologies Used 

✅ **SQL (MySQL/PostgreSQL)** → Querying & business intelligence  

---

## 🏆 How to Use This Analysis 

### 1️⃣ Clone the Repository  

**git clone https://github.com/RaiSudeep/Global-Housing-Market-Analysis.git**  
**cd Global-Housing-Market-Analysis**  

### 2️⃣ Set Up Database & Clean Data
**First, create the database schema and import the datasets:**  
**SOURCE queries/schema_setup.sql;**  

### 3️⃣ Run SQL Queries
**After setting up the database, execute analysis queries:**  

sql
**-- Example: Running Basic KPIs Query**  
**USE global_housing_market_analysis;**  
**SOURCE queries/Basic_KPIs.sql;**  

### 4️⃣ Analyze Insights
**📊 Review Schema & Data Cleaning (queries/schema_setup.sql)**  
**📉 Explore Basic KPIs (queries/Basic_KPIs.sql)**  
**📈 Deep-dive into Intermediate & Advanced KPIs (queries/Intermediate_KPIs.sql, queries/Advanced_KPIs.sql)**  

---

## 📢 Contact  
For any questions or collaboration, feel free to reach out:  
📧 **Email:** sudiprai969@gmail.com  
🔗 **LinkedIn:** [Sudeep Rai](https://www.linkedin.com/in/sudeep-rai-78022b18b/)  
---
