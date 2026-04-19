# Connecticut Cannabis Market Dynamics: End-to-End Analytics Project

## 🚀 Project Overview
- Analyzes how pricing impacts demand, revenue growth, and market behavior in the Connecticut cannabis industry  
- Focuses on transition from medical-only to dual-market structure  
- Built an end-to-end analytics workflow using:
  - Supabase (PostgreSQL)
  - Google Colab (Python)
  - Power BI  
- Addresses key business questions:
  - Price elasticity  
  - Market expansion  
  - Reporting volatility  

---

## 🎯 Business Objectives
- Price Elasticity: Measure how sensitive demand is to price changes to optimize revenue  
- Market Dynamics: Determine whether adult-use growth expands the market or cannibalizes medical sales  
- Data Integrity: Normalize weekly reporting noise to reveal true revenue trends  
- Data Storytelling: Build an interactive executive dashboard to communicate findings  

---

## 🛠 Tools & Technologies
- Supabase / PostgreSQL  
  - Data storage and time-series analysis using window functions  
- Python (Pandas, NumPy)  
  - Data transformation, rolling averages, elasticity modeling  
- Power BI  
  - Interactive dashboard and KPI development  

---

## 🔄 Project Workflow

### 1. Data Engineering (SQL)
- Structured weekly cannabis sales data in a relational database  
- Used SQL window functions (LAG, OVER) to calculate week-over-week changes  
- Calculated elasticity coefficients directly in SQL for a single source of truth  

### 2. Data Analysis (Python)
- Applied 4-week rolling averages to reduce reporting volatility  
- Calculated mean price elasticity (14.59)  
- Performed outlier detection to validate anomalies  

### 3. Dashboard Development (Power BI)
- Built KPI cards:
  - Total Revenue ($447.4M)  
  - Average Price ($39.51)  
- Created trend visualization (weekly vs rolling average)  
- Developed elasticity scatter plots for pricing insights  

---

## 🔍 Key Insights
- High Demand Elasticity  
  - Price reductions significantly increase unit volume  
- Market Expansion  
  - Adult-use growth is increasing total market size (66.44% share)  
- Data Integrity  
  - Rolling averages removed reporting noise and improved reliability  

---

## 📈 Dashboard Highlights
- Total Revenue: $447.4M  
- Total Units Sold: 11.8M  
- Average Price: $39.51  
- Medical Market Share: 42.17%  
- Adult-Use Market Share: 57.83%  

![Dashboard](dashboard.png)

---

## 🎯 Strategic Takeaway
- Balance short-term volume growth with long-term margin protection  
- Price reductions increase demand, but sustained price compression may reduce profitability  

---

## 📊 Project Outcome
- Built an end-to-end analytics solution integrating SQL, Python, and Power BI  
- Identified strong price elasticity driving demand growth  
- Demonstrated that adult-use expansion is increasing overall market size  
- Improved data reliability using rolling averages to remove reporting noise  
- Delivered actionable insights to support pricing and revenue strategy decisions  

---

## 📦 Project Deliverables
- Python data analysis workflow  
- SQL analytical queries  
- Power BI interactive dashboard  
- Business insights and recommendations  

---

## ▶️ How to Run This Project
1. Run SQL queries in PostgreSQL / Supabase  
2. Open `CT_Cannabis_Analysis.ipynb` in Google Colab  
3. Upload dataset (`cannabis_sales.csv`) and run all cells  
4. Open `Executive_Dashboard.pbix` in Power BI to explore visuals  

---

## 📂 Files Included
- CT_Cannabis_Analysis.ipynb  
  - Python analysis and data workflow  
- Market_Trends_Queries.sql  
  - SQL queries and data engineering  
- Executive_Dashboard.pbix  
  - Power BI dashboard  
- cannabis_sales.csv  
  - Source dataset  
