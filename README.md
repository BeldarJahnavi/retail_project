# 📊 Sales Performance Analysis and Business Insights  
### *An End-to-End Data Analytics Project using Python, SQL, and Power BI*  

---

## 🧾 Overview  

This project analyzes sales performance and profitability trends of a retail superstore using real-world business data.  
It demonstrates the complete **data analytics lifecycle** — from data cleaning and transformation using **Python**,  
to data management and querying in **MySQL**, and finally, visualization and dashboard creation in **Power BI**.

The goal is to uncover actionable insights such as:
- Top-performing categories and regions  
- Impact of discounts on profit  
- Monthly and regional sales trends  
- Opportunities to improve profit margins  

---

## 🎯 Objectives  

- Clean and preprocess raw data using Python (Pandas, NumPy).  
- Design a relational database in MySQL for structured analysis.  
- Write analytical SQL queries to extract business insights.  
- Visualize KPIs and trends using interactive Power BI dashboards.  
- Identify actionable insights to guide business decision-making.  

---

## 🧠 Key Insights  

- **Technology** is the highest revenue-generating category (~38% of sales).  
- **Furniture** often shows losses due to high discounts.  
- **West Region** performs best, while **Central Region** lags behind.  
- Discounts above **20%** significantly reduce profit margins.  
- Peak sales months are **November and December**, indicating strong holiday season demand.  

---

## 🛠️ Tools & Technologies  

| Tool | Purpose |
|------|----------|
| **Python (Google Colab)** | Data cleaning and preprocessing |
| **Pandas, NumPy** | Data manipulation and transformation |
| **MySQL Workbench** | Database design and SQL querying |
| **Power BI** | Dashboard creation and visualization |
| **Matplotlib, Seaborn** | Exploratory data analysis (EDA) |
| **Excel** | Initial dataset exploration |

---

## 📂 Dataset Information  

- **Dataset Name:** Sample – Superstore.csv  
- **Records:** ~10,000  
- **Columns:** 21  
- **Key Attributes:**  
  - Order ID, Order Date, Ship Date, Ship Mode  
  - Customer Name, Segment, Region, City, State  
  - Category, Sub-Category, Product Name  
  - Sales, Quantity, Discount, Profit  

---

## ⚙️ Project Workflow  

### **1. Data Cleaning (Python)**  
- Imported CSV using Pandas.  
- Removed duplicates and missing values.  
- Formatted dates (`Order Date`, `Ship Date`).  
- Verified data consistency.  
- Exported clean dataset as `Clean_Superstore.csv`.  

### **2. Database Integration (MySQL)**  
- Created database `retail_project`.  
- Imported the cleaned dataset using MySQL Workbench.  
- Performed SQL queries for:
  - Monthly Sales & Profit trends  
  - Category & Sub-category performance  
  - Regional analysis  
  - Discount vs Profit impact  

### **3. Data Visualization (Power BI)**  
Created an interactive Power BI dashboard with:  
- **KPI Cards:** Total Sales, Profit, Quantity, Discount  
- **Bar Chart:** Monthly Sales and Profit trends  
- **Treemap:** Category and Sub-Category contribution  
- **Map Visualization:** Regional Sales by State  
- **Waterfall Chart:** Category-wise Profit Breakdown  
- **Top Products Table:** High revenue & low profit products  

---

## 📈 Dashboard Preview  

> *(Insert a screenshot or Power BI dashboard image here)*  

Example visuals included:  
- Sales by Region (Map)  
- Monthly Profit Trend (Line Chart)  
- Category Contribution (Treemap)  
- KPI Summary Cards  

---

## 💡 Results  

| **Aspect** | **Observation** |
|-------------|----------------|
| Best Category | Technology |
| Weakest Category | Furniture |
| Highest Sales Region | West |
| Lowest Profit Region | Central |
| Peak Months | November, December |
| Discount Impact | >20% reduces profit margin |

---

## 🚀 Future Improvements  

- Integrate **real-time MySQL connection** with Power BI for live dashboards.  
- Build **forecasting models** using Python (Prophet / ARIMA).  
- Add **automated report generation** and scheduling.  
- Expand to customer segmentation and predictive analytics.  

---

## 📚 Project Structure  

```bash
📁 Sales-Performance-Analysis/
│
├── 📄 README.md                  # Project documentation
├── 📄 Clean_Superstore.csv       # Cleaned dataset
├── 📄 Superstore_Analysis.ipynb  # Python notebook for cleaning & EDA
├── 📄 SQL_Queries.sql            # MySQL analytical queries
├── 📊 PowerBI_Dashboard.pbix     # Power BI Dashboard file
└── 📄 Report.docx / Report.pdf   # Final project report
