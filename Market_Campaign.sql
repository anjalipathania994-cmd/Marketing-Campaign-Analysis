-- Q1: Which channel gives the highest average ROI?

SELECT
    channel,
    ROUND(AVG(roi_percent)::numeric, 2) AS avg_roi
FROM marketing_campaign
GROUP BY channel
ORDER BY avg_roi DESC;



-- Q2: Which channel generates the most leads?

SELECT
    channel,
    ROUND(AVG(leads_generated)::numeric, 2) AS avg_leads
FROM marketing_campaign
GROUP BY channel
ORDER BY avg_leads DESC;


-- Q3: Which channel has the best conversion rate?
--     conversion rate = conversions / leads_generated

SELECT
    channel,
    ROUND(AVG(conversions)::numeric, 2)                                          AS avg_conversions,
    ROUND(AVG(leads_generated)::numeric, 2)                                      AS avg_leads,
    ROUND((AVG(conversions) / AVG(leads_generated) * 100)::numeric, 2)          AS conversion_rate_pct
FROM marketing_campaign
GROUP BY channel
ORDER BY conversion_rate_pct DESC;



-- Q4: Does more budget lead to higher ROI?

SELECT
    CASE
        WHEN budget_usd < 10000                  THEN 'Low (< $10k)'
        WHEN budget_usd BETWEEN 10000 AND 30000  THEN 'Medium ($10k–$30k)'
        ELSE                                          'High (> $30k)'
    END AS budget_bucket,
    COUNT(*)                                     AS total_campaigns,
    ROUND(AVG(roi_percent)::numeric, 2)          AS avg_roi
FROM marketing_campaign
GROUP BY budget_bucket
ORDER BY avg_roi DESC;


-- Q5: Which campaign gives the best ROI per dollar spent?

SELECT
    campaign_name,
    ROUND(AVG(roi_percent)::numeric, 2)                              AS avg_roi,
    ROUND(AVG(budget_usd)::numeric, 2)                               AS avg_budget,
    ROUND((AVG(roi_percent) / AVG(budget_usd) * 100)::numeric, 4)   AS roi_per_dollar
FROM marketing_campaign
GROUP BY campaign_name
ORDER BY roi_per_dollar DESC;


-- Q6: Which region gets the most marketing budget?

SELECT
    region,
    ROUND(SUM(budget_usd)::numeric, 2)  AS total_budget,
    ROUND(AVG(budget_usd)::numeric, 2)  AS avg_budget,
    COUNT(*)                            AS total_campaigns
FROM marketing_campaign
GROUP BY region
ORDER BY total_budget DESC;


-- Q7: Which region has the highest conversions and best ROI?

SELECT
    region,
    SUM(conversions)                        AS total_conversions,
    ROUND(AVG(roi_percent)::numeric, 2)     AS avg_roi
FROM marketing_campaign
GROUP BY region
ORDER BY total_conversions DESC;

-- Q8: Which region is under-performing?

-- Step 1: Find the worst region
SELECT
    region,
    ROUND(AVG(roi_percent)::numeric, 2) AS avg_roi
FROM marketing_campaign
GROUP BY region
ORDER BY avg_roi ASC
LIMIT 1;

-- Step 2: Show worst campaigns in that region
--         (replace 'South' with the region from Step 1)
SELECT
    campaign_name,
    channel,
    ROUND(AVG(roi_percent)::numeric, 2) AS avg_roi,
    ROUND(AVG(budget_usd)::numeric, 2) AS avg_budget,
    SUM(conversions) AS total_conversions
FROM marketing_campaign
WHERE region = 'South'
GROUP BY campaign_name, channel
ORDER BY avg_roi ASC
LIMIT 10;

-- Q9: Monthly trend of leads from 2022 to 2024

SELECT
    TO_CHAR(start_date::date, 'YYYY-MM') AS year_month,
    SUM(leads_generated) AS total_leads,
    COUNT(*) AS total_campaigns
FROM marketing_campaign
WHERE start_date::date BETWEEN '2022-01-01' AND '2024-12-31'
GROUP BY year_month
ORDER BY year_month ASC;

-- Q10: Which month of the year has the best ROI?

SELECT
    EXTRACT(MONTH FROM start_date::date) AS month_number,
    TO_CHAR(start_date::date, 'Month') AS month_name,
    ROUND(AVG(roi_percent)::numeric, 2) AS avg_roi,
    COUNT(*) AS total_campaigns
FROM marketing_campaign
GROUP BY month_number, month_name
ORDER BY avg_roi DESC;



-- Q11: How many campaigns per status?

SELECT
    status,
    COUNT(*)                                                            AS total_campaigns,
    ROUND((COUNT(*) * 100.0 / SUM(COUNT(*)) OVER ())::numeric, 2)     AS percentage
FROM marketing_campaign
GROUP BY status
ORDER BY total_campaigns DESC;



-- Q12: Do Completed campaigns have higher ROI than others?

SELECT
    status,
    COUNT(*) AS total_campaigns,
    ROUND(AVG(roi_percent)::numeric, 2) AS avg_roi,
    ROUND(AVG(conversions)::numeric, 2) AS avg_conversions,
    ROUND(AVG(leads_generated)::numeric, 2) AS avg_leads
FROM marketing_campaign
GROUP BY status
ORDER BY avg_roi DESC;
