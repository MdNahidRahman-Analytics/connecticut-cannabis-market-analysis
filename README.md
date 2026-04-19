Connecticut Cannabis Market Dynamics: End-to-End Analytics Project
🚀 Project Overview
This project analyzes how pricing impacts demand, revenue growth, and market behavior in the Connecticut cannabis industry during its transition from a medical-only system to a dual-market structure.
Using Supabase (PostgreSQL), Google Colab (Python), and Power BI, I built an end-to-end analytics workflow to answer strategic business questions around price elasticity, market expansion, and reporting volatility.
🎯 Business Objectives
•	Price Elasticity: Measure how sensitive demand is to price changes.
•	Market Dynamics: Determine whether adult-use growth is expanding the market or replacing medical sales.
•	Data Integrity: Normalize weekly reporting noise to reveal the true revenue trend.
•	Data Storytelling: Build an interactive dashboard to communicate executive-level insights.
🛠 Tools & Technologies
•	Supabase / PostgreSQL — Data storage, SQL querying, and time-series performance analysis.
•	Google Colab / Python (Pandas, NumPy) — Data transformation, rolling averages, and elasticity modeling.
•	Power BI — Dashboard development and interactive business visualization.
________________________________________
🔄 Project Workflow
1. Data Engineering in Supabase (PostgreSQL)
•	Imported and structured weekly cannabis sales data.
•	Used SQL window functions such as LAG() and OVER() to analyze week-over-week changes.
•	Calculated pricing and volume change metrics directly in the database to ensure a "Single Source of Truth."
2. Data Analysis in Google Colab (Python)
•	Applied 4-week rolling averages to reduce volatility caused by incomplete reporting weeks (calendar crossovers).
•	Calculated the Mean Price Elasticity (~14.59) to evaluate how changes in average price affect units sold.
•	Performed EDA to validate that revenue trends were stable despite reporting anomalies.
3. Dashboard Development in Power BI
•	Built KPI cards for Total Revenue ($447.4M) and Market Share (57.8% Adult-Use).
•	Created trend visuals for weekly sales vs. moving averages to highlight true demand.
•	Built elasticity scatter plots to support strategic pricing decisions.
________________________________________
🔍 Key Insights
•	High Demand Elasticity: The analysis indicates a highly price-sensitive consumer base where price reductions drive significantly higher unit volume.
•	Market Expansion: Total revenue is trending upward, suggesting that adult-use is attracting new consumers rather than cannibalizing the medical base.
•	Data Integrity: Rolling averages confirmed that sharp weekly "dips" were reporting noise, providing a more reliable outlook for stakeholders.
📈 Dashboard Highlights
•	Total Revenue: $447.4M
•	Total Units Sold: 11.8M
•	Average Price: $39.51
•	Adult-Use Market Share: 57.8%
🎯 Strategic Takeaway
Pricing strategy should balance short-term volume growth with long-term margin protection. While price reductions currently increase demand, sustained price compression may weaken revenue quality as the market reaches peak maturity.
________________________________________
📂 Files Included
•	CT_Cannabis_Analysis.ipynb — Python analysis in Google Colab
•	Market_Trends_Queries.sql — SQL queries used in Supabase
•	Executive_Dashboard.pbix — Power BI dashboard
•	cannabis_sales.csv — Dataset
⚙️ How to Run This Project
1.	SQL: Run the scripts in the /SQL folder on your Supabase instance.
2.	Python: Open the .ipynb file in Google Colab, upload the CSV, and run all cells.
3.	Power BI: Open the .pbix file to explore the interactive visuals.
________________________________________
Final Advice for your GitHub:
When you upload this to GitHub, make sure the images are visible.
1.	Create a folder in your GitHub called images.
2.	Upload your three screenshots there.
3.	Use this code in your README to show them: ![Dashboard](images/your_dashboard_image.jpg)

