## 📈Marketing Campaign Analysis - End-to-End Data Analytics Project

###


This project focuses on understanding the effectiveness of marketing campaigns using data analysis techniques. The analysis was performed to identify business growth opportunities, improve marketing performance, and support better decision-making through data-driven insights. By analyzing campaign data, the project helps businesses understand customer engagement, conversion performance, and budget efficiency.It follows a complete Data Analytics Lifecycle using Python, SQL, and Power BI.

## 📦 Project Overview



- This project is based on analyzing marketing campaign data.

- The main goal was to understand how different marketing campaigns performed and how profitable they were.

- I worked with raw and messy data and converted it into meaningful business insights.

- I analyzed important metrics like ROI (Return on Investment), conversions, and campaign performance.

- Different marketing channels such as Email, Social Media, and PPC were compared to see which performed best.

- Geographic analysis was also done to identify which locations generated better results.

- The project helped answer important business questions, such as:

- Which campaigns are giving the best results?

- Are marketing budgets being used effectively?

- Which channels are driving more conversions?

- Where is the business losing efficiency?

- Based on the analysis, I provided data-driven recommendations to improve future marketing strategies and optimize budget allocation.

## 🔧 Tools & Technologies



- **Python** – Data cleaning and preprocessing (pandas, numpy)


- **SQL** (MySQL / PostgreSQL) – Business logic and analytical queries



- **Power BI Desktop** – Interactive dashboards and KPIs



- **Excel** – Initial data review and validation

## 📊 Dataset Information



- The dataset I used initially contained raw, untidy data representing various marketing campaigns from 2022 to 2024.




- **Total Records**: 6,000 rows




- **Total Records**: 2,582 rows (after removing bad data and extreme outliers)




## Key Columns:
 10 columns including campaign_id, campaign_name, channel, region, start_date, budget_usd, leads_generated, conversions, roi_percent, and status.

## 🧹 Data Cleaning Process (Pandas)




I used Python (Pandas) in a Jupyter Notebook to systematically clean and standardize the dataset before performing any analysis. 

Here is exactly what I did step-by-step:

**Standardized Column Names**:I converted all column headers to lowercase and replaced spaces with underscores (e.g., Campaign Name became campaign_name) to make querying easier later.

**Removed Duplicates & Spaces**:I stripped extra, hidden spaces from text columns and deleted duplicate rows to ensure accurate counting.

## Handled Missing Values:



- For text columns (like channel and region), 

- I filled empty spaces with the "mode" (the most frequent value).

- For number columns (like leads_generated and conversions), 

- I filled empty spaces with the "median" to avoid skewing the averages.

## Fixed Data Formats: 

-  I cleaned the budget_usd column by removing string characters like $, USD, and commas, then converted it into proper numbers.

- I cleaned the roi_percent column by removing the % symbol so I could perform math on it.

- I converted the start_date column into a proper, standardized Date format.

- I fixed text formatting so that words were uniformly capitalized (e.g., converting "social media" to "Social Media").

**Generated Missing IDs**:I found rows missing a campaign_id and wrote a script to automatically generate new, unique IDs (like 'CMP-10001') to maintain a perfect primary key.

**Removed Extreme Outliers**:I used the Interquartile Range (IQR) statistical method to remove crazy, unrealistic outliers in budgets and leads that would have distorted my final dashboard.

**Database Export**: Finally, I used SQLAlchemy to automatically push my beautifully cleaned dataset directly into a PostgreSQL database for analysis.

## 📈 Exploratory Data Analysis (EDA)



During the EDA phase in Python, I briefly explored the shape of the data to understand what I was working with:

- I checked the distribution of budgets to see what a "normal" campaign costs.

- I looked at the unique categories to see how many different channels (Social Media, Organic, Email, PPC) and regions (North, South, East, West) we were targeting.

- I reviewed the date ranges to confirm we had a solid multi-year dataset (2022–2024) to track trends over time.

## 🗄️ SQL Analysis



Once the clean data was in my **PostgreSQL** database, 
I wrote 12 targeted SQL queries to extract meaningful business metrics.

**Aggregations for Performance**:I used GROUP BY, SUM, and AVG to find out which marketing channels yield the highest average ROI and the most leads.

**Created Custom Business Metrics**: I wrote formulas directly in SQL to calculate the conversion_rate_pct (conversions divided by leads) and roi_per_dollar to see where our money works hardest.

**Budget Logic**:I used CASE WHEN statements to group campaigns into 'Low (<$10k)', 'Medium ($10k-$30k)', and 'High (>$30k)' budget buckets to see if spending more actually guarantees better returns.

**Regional Deep Dives**:I wrote multi-step queries to find the absolute worst-performing region, and then drilled down to find the specific campaigns causing that failure.

**Time-Series Analysis**: I used date functions (TO_CHAR and EXTRACT) to group performance by Year-Month to spot historical trends and find out which specific month consistently delivers the best ROI.

## 📊 Power BI Dashboard



- To make my findings easy to digest for management and stakeholders, I connected my database to Power BI and built an interactive dashboard.

- **KPI Cards**: Placed at the top to instantly show Total Budget Spent, Average ROI, Total Leads Generated, and Overall Conversion Rate.

- **Bar Charts (Channel Performance)**: Visually compares Email, Social Media, PPC, and Organic channels so stakeholders can instantly see which channel drives the best ROI.

- **Donut Chart(Regional Spend)**: Shows exactly what percentage of the budget is being allocated to the North, South, East, and West regions.

- **Line Chart (Monthly Trends)**: Tracks leads and ROI over time, helping the business understand seasonal peaks (e.g., spikes during the holidays or summer).

- **Matrix Table (Campaign Deep-Dive)**: A detailed table allowing users to drill down into specific campaign names to see their exact status, budget, and conversion numbers.

## 🔍 Insights & Findings



- Through my analysis, I discovered several important business insights:

**Higher Spend ≠ Higher ROI**:The analysis showed that simply throwing a "High" budget at a campaign does not guarantee a better return. Some "Low" budget campaigns had incredible ROI per dollar spent.

**Channel Efficiency**:Certain channels (like Social Media and Organic) consistently drive cheaper leads with higher conversion rates compared to expensive PPC campaigns.

**Regional Mismatches**:I found that we are spending a massive portion of our budget in certain regions, but those regions are actually underperforming and dragging down our overall average ROI.

**Seasonality Matters**: The month-over-month trend analysis revealed distinct times of the year where campaigns perform exceptionally well, indicating we should time our launches better.

## 🚀 Strategic Recommendations



Based on the data, I recommend the business take the following actions:

**Reallocate the Budget**: Shift funds away from the consistently underperforming regions and expensive low-converting channels. Reinvest that money into the channels with the highest conversion rates.

**Investigate the Worst Region**: Pause active campaigns in our worst-performing region. The marketing team needs to rethink the messaging or target audience for that specific area before spending more money there.

**Double Down on Seasonal Peaks**:Align our biggest campaign launches and highest budgets with the "Best ROI Months" identified in the SQL analysis to maximize our returns naturally.

## 🔮 Future Enhancements



To take this project even further, - I would implement:

**Predictive Analytics**: Use historical data in Excel or Python to forecast the expected ROI of a future campaign before the budget is even approved.

**Automated Data Pipelines**: Set up a cloud pipeline so that marketing data flows directly into the database and updates the Power BI dashboard automatically every single day without manual cleaning.

**A/B Testing Framework**: Add a system to track different versions of the same campaign to definitively prove which ad copy or image performs best.

## 📂 Project Structure



Marketing Campaign-Analysis

│── marketcampaign.ipynb                         # Python notebook for cleaning & EDA

│── marketing_campaign_cleaned.csv               # Cleaned dataset

│── marketing_campaign_messy.csv                 # Messy dataset

│── Market_Campaign.sql                       # SQL queries for insights (PostgreSQL)

│── marketing_campaign_Dashboard.pbix         # Power BI dashboard file

│── README.md                                  # Documentation





