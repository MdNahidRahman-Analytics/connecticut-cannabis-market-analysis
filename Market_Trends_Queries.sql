-- PROJECT: Connecticut Cannabis Market Dynamics
-- OBJECTIVE: Calculate Price Elasticity & Market Expansion
-- TOOL: PostgreSQL / Supabase
-- ==========================================================

-- 1. Initial Data Audit
SELECT * FROM cannabis_sales LIMIT 5;

-- 2. Advanced Market Dynamics Analytics
-- Using Window Functions (LAG/OVER) to analyze week-over-week growth
WITH market_trends AS (
    SELECT 
        week_ending,
        total_sales,
        total_units,
        -- Calculate Average Price per week
        (total_sales / NULLIF(total_units, 0)) AS avg_price,
        -- Fetch previous week's data for comparison
        LAG(total_units) OVER (ORDER BY week_ending) AS prev_units,
        LAG(total_sales / NULLIF(total_units, 0)) OVER (ORDER BY week_ending) AS prev_price
    FROM cannabis_sales
),
metrics_calculation AS (
    SELECT 
        *,
        -- Calculate WoW % Change for Volume and Price
        ROUND(((total_units - prev_units) / NULLIF(prev_units, 0))::numeric, 4) AS pct_change_quantity,
        ROUND(((avg_price - prev_price) / NULLIF(prev_price, 0))::numeric, 4) AS pct_change_price
    FROM market_trends
)
SELECT 
    week_ending,
    total_sales,
    total_units,
    ROUND(avg_price::numeric, 2) AS avg_price,
    pct_change_quantity,
    pct_change_price,
    -- Calculate Elasticity Coefficient: (% Change in Quantity) / (% Change in Price)
    -- This supports the "Price Elasticity Analysis" scatter plot in Power BI
    CASE 
        WHEN pct_change_price = 0 THEN 0 
        ELSE ROUND((pct_change_quantity / pct_change_price)::numeric, 2) 
    END AS elasticity_coefficient
FROM metrics_calculation
WHERE prev_units IS NOT NULL 
  AND prev_price IS NOT NULL
ORDER BY week_ending DESC;

-- 3. Market Share Distribution Verification
-- Supports the "Market Share Distribution: Adult vs Medical" Donut Chart
SELECT 
    SUM(adult_use_sales) AS total_adult_sales,
    SUM(medical_sales) AS total_medical_sales,
    ROUND((SUM(adult_use_sales) / SUM(total_sales) * 100)::numeric, 2) AS adult_market_share_pct
FROM cannabis_sales;