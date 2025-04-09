# 🏡 Global-Housing-Market-Analysis & Forecasting (2015 - 2024)
💾 Data Processing: MySQL & Python | 📊 **ML Models**: Linear Regression & LSTM 

## 🔗 Source: Kaggle Dataset
This project is based on the **Global Housing Market Dataset**, analyzing **house price indices, affordability trends, mortgage rates, inflation, and population growth** from **2015 to 2024**.  
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
Housing markets fluctuate based on **economic stability, mortgage rates, urban development, and inflation trends**.  
This analysis helps **investors, policymakers, and researchers** make data-driven decisions by applying **SQL-based business analytics** and **Python-driven machine learning models** to identify patterns, detect crisis periods, and forecast future market trends.

This project leverages:  
✅ **SQL queries** for structured economic analysis.   
✅ **Python-based data processing & visualization** for deep insights.  
✅ **Machine learning (Linear Regression & LSTM)** for predictive modeling.  

---
## 📖 Business Insights & Predictive Analytics  
Housing markets fluctuate due to **economic stability, mortgage rates, urban development, and inflation trends**.  
This project applies **SQL-based business analytics & machine learning forecasting** to predict future housing prices.  

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


## 🏗 Python: Data Visualization  
This project includes **graphical insights** showcasing market trends and correlations:

- 📈 **Housing Price Index Over Time**  
- 🔥 **Feature Correlation Heatmap**
- 🏦 **Distribution of Mortgage Rates by Country**
- 💰 **Housing Affordability vs Inflation Trends**  
- 📊 **Population Growth vs Urbanization Rate**  
- 🌍 **Top 5 Countries with Highest Housing Price Growth**
- 🔮 **Housing Price Index Forecast for Top Growing Countries**
 
All visualizations are built using **Matplotlib** and **Seaborn**.

---

## 📊 Expected Outcomes & Insights  

✔ **Identify Housing Price Trends** → Analyze **YoY percentage changes** using SQL queries & **time-series visualization** in Python.  
✔ **Economic Crisis Detection** → Detect **years with high inflation & GDP decline** using SQL analytics and **feature correlation heatmaps**.  
✔ **Market Volatility Analysis** → Evaluate **sharp price fluctuations** in housing markets using **standard deviation calculations (SQL)** & **box plots (Python)**.  
✔ **Urbanization Impact on Rent Affordability** → Assess **population shifts & rental markets** via SQL segmentation & Python-based **scatter plots and regression models**.  
✔ **Feature Importance for Housing Prices** → Determine **key economic factors** impacting house prices using **SQL queries** and **linear regression models (Python)**.  
✔ **Future Price Forecasting** → Use **moving averages & LSTM deep learning models** in Python for **multi-year housing price projections**.   

---

## 🛠 Technologies Used 

### Programming & Query Languages  
✅ **Python** → Data processing, visualization & machine learning  
✅ **SQL (MySQL/PostgreSQL)** → Business intelligence & market trend analysis  

### Libraries Used  
✔ **Pandas** → Data manipulation  
✔ **NumPy** → Numerical operations  
✔ **Matplotlib & Seaborn** → Visualization  
✔ **Scikit-learn** → Machine learning (Linear Regression)   
✔ **TensorFlow & Keras** → Deep learning (LSTM forecasting) 

---

## 🏆 How to Use This Analysis 

### 🏢 SQL-Based Queries (MySQL)  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/RaiSudeep/Global-Housing-Market-Analysis.git 
cd Global-Housing-Market-Analysis
```

### 2️⃣ Set Up Database & Clean Data
**First, create the database schema and import the datasets:**  
```bash
SOURCE queries/schema_setup.sql;
```

### 3️⃣ Run SQL Queries
**After setting up the database, execute analysis queries:**  
```bash
-- Example: Running Basic KPIs Query  
USE global_housing_market_analysis;  
SOURCE queries/Basic_KPIs.sql;
```

### 4️⃣ Analyze Insights
**📊 Review Schema & Data Cleaning (queries/schema_setup.sql)**  
**📉 Explore Basic KPIs (queries/Basic_KPIs.sql)**  
**📈 Deep-dive into Intermediate & Advanced KPIs (queries/Intermediate_KPIs.sql, queries/Advanced_KPIs.sql)**  

### 🧑‍💻 Python-Based Data Processing & Visualization  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/RaiSudeep/Global-Housing-Market-Analysis.git 
cd Global-Housing-Market-Analysis
```
### 2️⃣ Install Dependencies  
```sh
pip install -r requirements.txt
```

### 3️⃣ Open Jupyter Notebook Launch Jupyter Notebook:
```sh
jupyter notebook
```

### 4️⃣ Run Notebooks  
**📊 Open data_analysis.ipynb for data cleaning, visualization, and insights.**  
**📈 Open ml_forecasting.ipynb to train models and forecast housing prices.**  

---

## 🖼 Images / Data Visualizations  
### 1️⃣ Housing Price Index Over Time
![image](https://github.com/user-attachments/assets/0355ba57-9632-4fe7-91c9-5077329c736b)

### 2️⃣ Feature Correlation Heatmap
![image](https://github.com/user-attachments/assets/fc069d89-7bb6-47d1-a343-4153d992faa0)

### 3️⃣ Distribution of Mortgage Rates by Country
![image](https://github.com/user-attachments/assets/53b28955-2d44-46f1-a169-94756887212c)

### 4️⃣ Housing Affordability vs Inflation Rate
![image](https://github.com/user-attachments/assets/d8f918f2-4556-476e-9aad-762200219ba4)

### 5️⃣ Population Growth vs Urbanization Rate
![image](https://github.com/user-attachments/assets/e4eb3a8b-77f3-48e6-a224-2eee60c8b755)

### 6️⃣ Top 5 Countries with Highest Price Growth
![image](https://github.com/user-attachments/assets/53b1afec-a1c2-498e-9890-0eb3526ed622)

### 7️⃣ Forecasting Future Housing Price Index (2026–2030)
![image](https://github.com/user-attachments/assets/b0fedf7c-c4dc-484d-ace6-8b1a36ce751f)


### Using LSTM - based deep learning model:
### Predicted Australia's Housing Price Index for 2026–2030:
![image](https://github.com/user-attachments/assets/b0ea6c19-8642-4a56-acb7-8d45ca3dfa36)

---

## 📢 Contact  
For any questions or collaboration, feel free to reach out:  
📧 **Email:** sudiprai969@gmail.com  
🔗 **LinkedIn:** [Sudeep Rai](https://www.linkedin.com/in/sudeep-rai-78022b18b/)  

---
