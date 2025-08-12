-- WHERE: Find products with MRP above 3000
SELECT * 
FROM zepto_v2
WHERE mrp > 3000;

-- HAVING: Find categories where avg MRP > 3000
SELECT Category, AVG(mrp) AS avg_mrp
FROM zepto_v2
GROUP BY Category
HAVING AVG(mrp) > 3000;

-- INNER JOIN: Match same category with itself
SELECT a.Category, a.name, b.name AS other_product
FROM zepto_v2 a
INNER JOIN zepto_v2 b
ON a.Category = b.Category
AND a.name <> b.name;

-- LEFT JOIN: Keep all products and join matching ones by category
SELECT a.Category, a.name, b.name AS match_product
FROM zepto_v2 a
LEFT JOIN zepto_v2 b
ON a.Category = b.Category
AND a.name <> b.name;

SELECT name, 
       (discountedSellingPrice * quantity) AS total_revenue
FROM zepto_v2;

-- Products priced higher than average MRP
SELECT name, mrp
FROM zepto_v2
WHERE mrp > (SELECT AVG(mrp) FROM zepto_v2);

-- Index for faster category-based search
CREATE INDEX idx_category ON zepto_v2(Category);

-- Optimized query
SELECT name, discountedSellingPrice
FROM zepto_v2
WHERE Category = 'Fruits & Vegetables';

CREATE VIEW category_sales AS
SELECT Category, 
       SUM(discountedSellingPrice * quantity) AS total_sales
FROM zepto_v2
GROUP BY Category;

-- Replace NULL weight with 0
SELECT name, COALESCE(weightInGms, 0) AS weight
FROM zepto_v2;

-- Find products with no discount info
SELECT * FROM zepto_v2
WHERE discountPercent IS NULL;
