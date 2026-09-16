a# Adventure Works Sales & Customer Analytics

A multi-tool analytics project analyzing Adventure Works Cycles' sales, product, and customer data — built using **Excel, SQL, Power BI, and Tableau**.

## 🏢 About Adventure Works

Adventure Works Cycles is a large, multinational manufacturing company that manufactures and sells metal and composite bicycles across North American, European, and Asian commercial markets. Headquartered in Bothell, Washington, the company expanded in the 2000s with a manufacturing plant in Mexico that became the sole producer of its touring bicycle line in 2001.

## 📌 Problem Statement

Coming off a successful fiscal year, Adventure Works Cycles wants to broaden its market share by targeting its best customers, extending product availability through an external website, and reducing cost of sales through lower production costs. However, raw transactional sales, product, and customer data is spread across multiple disconnected sources, making it difficult to identify top-performing products, high-value customers, regional sales trends, and profitability drivers.

## 🎯 Objective

To process, model, and visualize Adventure Works' sales data end-to-end — from raw data transformation through interactive dashboards — enabling stakeholders to analyze sales performance, production costs, customer behavior, and regional trends for data-driven business decisions.

## 🛠️ Tools & Workflow

This project follows a multi-stage pipeline, with each tool handling a distinct part of the analysis:

```
Raw Data (Sales, Product, Customer sheets)
        ↓
   Excel — data transformation, calculated fields, pivot tables, charts
        ↓
   SQL — data loading & querying
        ↓
   Power BI — interactive dashboard & data model
        ↓
   Tableau — interactive dashboard & customer analysis
```

---

### 1️⃣ Excel — Data Modeling & Analysis

Source data was imported as separate workbooks and connected through a relational **data model** built in Excel (Power Pivot):

- Imported individual source files: `Product.xlsx`(DimProduct + DimProductCategory + DimProductSubCategory), `DimCustomer.xlsx`, `DimSalesTerritory.xlsx`, `DimDate.xlsx`, `Sales.xlsx` (Fact Internet Sales + Fact Internet Sales New)
- Built a **data model** establishing relationships between all files (star schema: Sales as fact table, linked to Product, Customer, Sales Territory, and Date dimension tables)
- Compiled the data model, pivot tables, charts, and all questionnaire answers into a **single consolidated Excel workbook**, which also serves as the dashboard

### 2️⃣ SQL — Data Loading & Querying

- Loaded the prepared sales dataset directly into SQL for querying and validation.
- **Known limitation**: the sales data was loaded directly from the Excel file rather than importing each file and appending/merging tables at the SQL layer — this step was instead handled in Excel beforehand. Future iterations should perform the union directly in SQL for a fully reproducible pipeline.

### 3️⃣ Power BI — Sales Dashboard

Three pages: **Introduction**, **Dashboard**, and **Details**.

**Dashboard page KPIs**: Total Sales ($29.36M), Gross Profit ($12.08M), Production Cost ($17.28M), Total Quantity (60K)

- **Sales Trend** — yearly sales (2010–2014)
- **Sales by Quarter** — pie chart showing Q1–Q4 split
- **Production Cost vs. Sales Amount** — month-wise combo chart
- **Yearly Sales by Product** — area chart by category (Accessories, Bikes, Clothing)
- Filters: **Country, Year, Commute Distance**

**Details page**: Product Category / Subcategory-level breakdown — Customer Count, Total Orders, Total Sales, and Profit per subcategory.

### 4️⃣ Tableau — Sales & Customer Dashboards

Two dashboards: **Overview** and **Customer Analysis**.

**Overview KPIs**: Total Sales ($9.1M), Total Profit ($3.8M), Profit Margin (41.3%), Total Orders (8.1K), Quantity Sold (17.8K), Production Cost ($17.3M)

- Yearly Total Sales, Production vs. Sales trend, Quarterly Total Sales (pie)
- Total Sales per Country, Monthly Total Sales, Total Sales per Sub-category (bubble)
- Filters: Sales Territory Country, Year, Quarter, Measure Parameter

**Customer Analysis KPIs**: Total Customers (18K), Avg. Income ($57.31K), Repeat Customer % (37.14%), Total Sales ($9.1M), Total Profit ($3.8M)

- Country-wise Total Customers, Top Customers by Sales
- Salary vs. Sales trend, Sales by Education & Commute Distance
- Filters: Sales Territory Country, Year, Quarter, Top Customer count, Occupation, Education

---

## 📁 Files in this Repository

| File | Description |
|---|---|
| `Adventure_details.docx` | Company background & data model requirements |
| `Questionnaire.xlsx` | Project brief — Excel transformation & analysis tasks |
| `DimProduct.xlsx` | Raw product source data |
| `DimProductCategory.xlsx` | Raw product category source data |
| `DimProductSubCategory.xlsx` | Raw product sub-category source data |
| `DimCustomer.xlsx` | Raw customer dimension source data |
| `DimSalesTerritory.xlsx` | Raw sales territory dimension source data |
| `DimDate.xlsx` | Raw date dimension source data |
| `FactInternetSales.xlsx` | Raw sales fact data 1 |
| `FactInternetSalesNew.xlsx` | Raw sales fact data 2 |
| `Final Sales Report.xlsx` | Consolidated Excel workbook — data model, relationships, pivot tables, charts & questionnaire answers |
| `Adventure PBI.pbix` | Power BI project file |
| `All Questions.sql` | SQL Script |
| `Sales.twbx` | Tableau  project file |
| Screenshots | Dashboard exports from Excel, Power BI and Tableau |

## 📈 Key Insights

- Total sales reached **$29.36M** (Power BI dataset view) with a gross profit of **$12.08M**.
- **2013** was the strongest sales year, peaking at **$16.4M**, before a sharp drop in 2014.
- **Bikes** are the dominant product category by revenue, especially in 2013.
- The **United States** leads all regions in total sales (**$9.4M**), followed by Australia (**$9.1M**).
- Repeat customers make up **37.14%** of the customer base, with an average income of **$57.31K**.
- Customers commuting **0–1 miles** contribute the highest sales share among distance bands.

---

⭐ If you found this project useful, consider giving the repo a star!
