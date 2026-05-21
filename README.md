# 📊 Market Campaign Analysis Project

## 📝 Project Overview

The **Market Campaign Analysis Project** is a complete Data Analytics project focused on analyzing marketing campaign performance and customer behavior using data-driven techniques.

In this project, raw and messy marketing campaign data was cleaned, transformed, analyzed, and visualized to uncover meaningful business insights. The main goal of this analysis was to help businesses understand:

* Which marketing campaigns performed best
* Which customer groups responded more positively
* How campaigns impacted revenue and engagement
* How businesses can improve future marketing strategies

Marketing campaigns generate huge amounts of customer data, but raw data alone cannot provide useful information. Through this project, I converted unstructured and inconsistent data into actionable business intelligence using Python, SQL, and Power BI.

---

## 🎯 Business Problem

Many businesses invest heavily in marketing campaigns but struggle to answer important questions such as:

* Which campaign generated the highest conversions?
* Which customer segment is most responsive?
* Which marketing channel provides better ROI?
* Why are some campaigns underperforming?
* How can customer engagement be improved?

Without proper analysis, companies may waste budget on ineffective campaigns.

This project solves these business problems by analyzing campaign data and identifying patterns that help improve decision-making.

---

## 🎯 Project Objective

The main objectives of this project were:

* Clean and preprocess raw marketing data
* Perform Exploratory Data Analysis (EDA)
* Analyze campaign performance using SQL
* Create an interactive Power BI dashboard
* Generate business insights and recommendations
* Help businesses make data-driven marketing decisions

---

# 🛠️ Tools & Technologies Used

| Tool / Technology    | Purpose                           |
| -------------------- | --------------------------------- |
| **Python**           | Data Cleaning & Data Analysis     |
| **Pandas**           | Data Manipulation & Cleaning      |
| **NumPy**            | Numerical Operations              |
| **Jupyter Notebook** | Data Analysis Environment         |
| **PostgreSQL**       | SQL Query Analysis                |
| **Power BI**         | Interactive Dashboard & Reporting |


# 📂 Dataset Information

The dataset used in this project contained marketing campaign information related to customers, campaign responses, revenue, and engagement metrics.

### 📌 Dataset Features

The dataset included important columns such as:

* Campaign_ID
* Campaign_Name
* Channel
* Region
* Start_Date
* Budget_USD
* Leads_Generated
* Conversions
* Click Rate
* ROI_Percent
* Status

### ⚠️ Initial Dataset Condition

The original dataset was messy and required preprocessing before analysis. The raw dataset contained:

* Missing values
* Duplicate records
* Inconsistent formatting
* Incorrect data types
* Extra spaces in text columns
* Null values
* Unstructured column names

Proper data cleaning was necessary to ensure accurate analysis and reliable insights.

---

# 🧹 Data Cleaning Process

Data cleaning was performed using **Python (Pandas)** to prepare the dataset for analysis.

* Cleaned raw marketing campaign data using Python Pandas

* Handled missing values and removed duplicate records

* Standardized column names and fixed inconsistent formatting

* Converted incorrect data types into proper formats

* Removed unwanted spaces and cleaned text values

* Performed null value checks and data validation

* Exported cleaned dataset for EDA, SQL analysis, and Power BI dashboard creation

# 📈 Exploratory Data Analysis (EDA)

## 📌 What is EDA?

Exploratory Data Analysis (EDA) is the process of analyzing datasets to discover patterns, trends, relationships, and insights before building reports or making decisions.

EDA helps transform raw data into meaningful business information.

## 📊 Analyses Performed

The following analyses were performed during EDA:

### 🔹 Campaign Performance Analysis

* Best-performing campaigns
* Conversion rate analysis
* Revenue comparison
* Engagement analysis

### 🔹 Marketing Channel Analysis

* Channel-wise campaign success
* ROI comparison
* Response rate evaluation

---

## 📉 Visualization Techniques Used

Different visualizations were created using Matplotlib and Seaborn:

| Visualization | Purpose               |
| ------------- | --------------------- |
| Bar Charts    | Campaign comparison   |
| Line Charts   | Revenue trends        |
| Donut Charts    | Customer segmentation |

---

🗄️ SQL Analysis


 Using PostgreSQL,After cleaning the dataset, PostgreSQL was used to perform business analysis and solve real-world marketing campaign problems using SQL queries.

📊 Business Problems Solved
* Identified the marketing channel with the highest average ROI

* Analyzed which channel generated the maximum leads

* Calculated conversion rates for different marketing channels

* Compared campaign ROI based on budget categories

* Found campaigns with the best ROI per dollar spent

* Analyzed region-wise marketing budget distribution

* Identified regions with highest conversions and ROI

* Detected under-performing regions and campaigns

* Analyzed monthly lead generation trends from 2022–2024

* Identified months with the highest campaign ROI

* Compared campaign performance based on campaign status

* Evaluated whether completed campaigns performed better than others

🛠️ SQL Concepts Used
GROUP BY

ORDER BY

Aggregate Functions (SUM, AVG, COUNT, MAX, MIN)

CASE Statements

Window Functions

Filtering using WHERE clause

Date Functions and Formatting

📈 Outcome of SQL Analysis


The PostgreSQL analysis helped uncover important business insights related to:

Campaign performance

Customer engagement

Revenue trends

Marketing effectiveness

ROI optimization

Regional campaign analysis

### 🔹 Aggregate Functions

Used to calculate:

* SUM()
* AVG()
* COUNT()
* MAX()
* MIN()

### 🔹 JOINS

Used for combining multiple related tables when required.

---

# 📊 Power BI Dashboard

## 📌 Dashboard Overview

An interactive Power BI dashboard was created to visualize campaign performance and customer insights in a user-friendly format.

The dashboard allows stakeholders to quickly understand business performance and make strategic decisions.

---

## 📌 Dashboard Features

### ✅ KPI Cards

Displayed important metrics such as:

* Total Revenue
* Total Campaigns
* Total Conversions
* Total Leads

### ✅ Charts & Visuals Used

* **Number Cards (KPIs):** Placed at the very top to instantly show the most important totals, like Total Ad Spend or Total Clicks.
* **Line Charts:** Used to track trends over time, making it easy to see when campaign results went up or down.
* **Bar Charts:** Used to compare different categories side-by-side, such as seeing which social media platform brought in the most users.
* **Pie and Donut Charts:** Used to show simple percentages, like comparing how many people viewed the ads on a phone versus a computer.
* **Interactive Filters (Slicers):** Added clickable menus and sliders so anyone looking at the dashboard can easily filter the view by specific dates or individual campaigns.

## 🎛️ Filters & Slicers

Interactive slicers were added for:

Date Filter: Change the dates to see results for any specific month or day.

Campaign Filter: Pick a specific marketing campaign to check its exact results.

Platform Filter: Choose channels like Facebook, Google, or Email to see what worked best.

Click to Filter: Click on any chart to instantly update the rest of the page.

## 📈 Dashboard Insights

The dashboard helps users understand:

* Best-performing campaigns
* Customer engagement patterns
* Revenue growth trends
* Conversion performance
* Segment-wise behavior analysis

---

# 🔍 Insights & Findings

Several important business insights were discovered during the analysis.

## 📌 Key Findings

* Certain campaigns generated significantly higher conversions than others.
* Some customer segments were more responsive to marketing campaigns.
* Specific marketing channels delivered better engagement and ROI.
* Revenue trends showed peak performance during selected campaigns.
* Customer engagement was strongly related to campaign type and targeting strategy.

---

# 🚀 Strategic Recommendations

Based on the analysis, the following recommendations were provided:

## ✅ Recommendations

* Invest more budget in high-performing campaigns.
* Focus marketing efforts on responsive customer segments.
* Improve low-performing campaign strategies.
* Use personalized marketing for better engagement.
* Monitor campaign KPIs regularly using dashboards.
* Optimize marketing channels with higher ROI.
* Implement data-driven decision-making for future campaigns.

---

# 🔮 Future Enhancements

The project can be enhanced further using advanced technologies and automation.

## 🚀 Possible Improvements

* Machine Learning prediction models
* Customer churn prediction
* Real-time dashboard integration
* Automated reporting system
* Cloud database integration
* AI-based campaign recommendations
* Marketing performance forecasting

---

# 📂 Project Structure

Market-Campaign-Analysis/
│
├── data/
│   ├── raw_dataset.csv
│   ├── cleaned_dataset.csv
│
├── notebooks/
│   ├── market_campaign_analysis.ipynb
│
├── sql_queries/
│   ├── marketing_campaign_queries.sql
│
├── dashboard/
│   ├── marketing_dashboard.pbix
│
├── images/
│   ├── dashboard_screenshot.png
│
├── README.md
│
└── requirements.txt
```

---

# 📸 Dashboard Screenshots
![Dashboard Screenshot](https://github.com/anjalipathania994-cmd/Marketing-Campaign-Analysis/blob/main/Screenshot_t.png)



# ✅ Conclusion

The **Market Campaign Analysis Project** successfully transformed raw marketing data into meaningful business insights using Data Analytics techniques.

Through:

* Data Cleaning with Python
* Exploratory Data Analysis
* SQL Business Query Analysis
* Interactive Power BI Dashboarding

valuable insights were generated to improve marketing performance and customer targeting strategies.




---
