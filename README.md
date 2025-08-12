# SQL Data Analysis – Zepto Dataset

## 📌 Overview
This project demonstrates SQL querying, data manipulation, and analysis using the **Zepto e-commerce dataset**.  
The dataset contains product details including category, MRP, discounts, quantities, and stock availability.

---

## 📂 Dataset Structure
**Table:** `zepto_v2`  
**Columns:**
- `Category` – Product category  
- `name` – Product name  
- `mrp` – Maximum Retail Price (in cents/paise)  
- `discountPercent` – Discount percentage applied  
- `availableQuantity` – Stock available  
- `discountedSellingPrice` – Selling price after discount  
- `weightInGms` – Product weight in grams  
- `outOfStock` – Boolean indicating stock status  
- `quantity` – Quantity per product pack

---

## 🛠 Tools Used
- **SQL Server Management Studio (SSMS)**
- **Microsoft SQL Server** (compatible with MySQL/PostgreSQL)
- **Zepto CSV dataset** imported into SQL

---

## 📜 SQL Queries Implemented

### 1. WHERE vs HAVING
- **WHERE** filters rows before aggregation.
- **HAVING** filters aggregated results.

### 2. Joins
- INNER JOIN, LEFT JOIN simulated using self-joins.

### 3. Aggregate Analysis
- Average Revenue Per Product (ARPP) using `AVG()` and multiplication of selling price × quantity.

### 4. Subqueries
- Identify products with MRP higher than the average.

### 5. Query Optimization
- Created index on `Category` for faster lookups.
- Avoided `SELECT *` to reduce data retrieval time.

### 6. Views
- Created a view `category_sales` to store total sales per category.

### 7. Handling NULL Values
- Used `COALESCE()` to replace nulls.
- Filtered rows with missing discount info.

---

## 📊 Example Insights
- Found top categories with the highest average MRP.
- Identified products generating the highest revenue.
- Highlighted categories with significant discounts.

---

## 🚀 How to Run
1. **Import Dataset**
   - Use SQL Server **Import Flat File** wizard to load `zepto_v2.csv` into a table.

2. **Run Queries**
   - Open the `.sql` file containing all queries.
   - Execute in SSMS (or MySQL/PostgreSQL with syntax adjustments).

3. **View Results**
   - Use `SELECT` statements to verify outputs.
   - For the view, run:
     ```sql
     SELECT * FROM category_sales;
     ```

---


t
