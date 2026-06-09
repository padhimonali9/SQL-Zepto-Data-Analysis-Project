-- Data Exploration

-- count of rows
-- select * from zepto_v2;

-- sample data
-- select * from zepto_v2 limit 10;

-- null values
-- select * from zepto_v2
-- where name is null 
-- or
-- mrp is null
-- or
-- discountPercent is null
-- or
-- availableQuantity is null
-- or
-- discountedSellingPrice is null 
-- or
-- weightInGms is null
-- or
-- outOfStock is null
-- or 
-- quantity is null;

-- different product categories
-- select distinct Category from zepto_v2;



-- ALTER TABLE zepto_v2
-- ADD COLUMN sku_id INT AUTO_INCREMENT PRIMARY KEY;
 
 -- select * from zepto_v2 limit 6;
 
 -- products in stock vs out of stock
--  select outOfStock,count(sku_id)
--  from zepto_v2
--  group by outOfStock;

-- product names present multiple times
-- select name, COUNT(sku_id) as "Number of SKUs"
-- from zepto_v2
-- GROUP BY name
-- having count(sku_id) > 1
-- order by count(sku_id) DESC;


-- DATA CLEANING
-- products with price = 0
-- select * from zepto_v2 where mrp = 0 or discountedSellingPrice = 0;

-- delete from zepto_v2 where mrp = 0;

-- convert paise to rupees
-- update zepto_v2
-- set mrp = mrp/100,
-- discountedSellingprice =  discountedSellingPrice /100;

-- data analysis

-- Q1. Find the top 10 best-value products based on the discount percentage.
-- select distinct name, mrp, discountPercent from zepto_v2 
-- order by discountPercent desc limit 10;


-- Q2.What are the Products with High MRP but Out of Stock
-- select name,mrp from zepto_v2  where outOfStock= "True"  and mrp >300 order by mrp desc ;


-- Q3.Calculate Estimated Revenue for each category
-- select category, sum(discountedSellingPrice *availableQuantity) as total_revenue 
-- from zepto_v2 group by category order by total_revenue desc;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
-- select distinct name,mrp,discountPercent from zepto_v2 where mrp >500 
-- and discountPercent <10;


-- Q5. Identify the top 5 categories offering the highest average discount percentage.
-- select distinct Category, round(avg(discountPercent),2) as Avg_discountPercent from zepto_v2
--  group by Category order by  Avg_discountPercent DESC limit 5;


-- Q6. Find the price per gram for products above 100g and sort by best value.

-- select name,weightInGms ,discountedSellingPrice,
-- round((discountedSellingPrice/weightInGms),2)
-- as pricePerGram from zepto_v2 where weightInGms >=100 order by pricePerGram ;

-- Q7.Group the products into categories like Low, Medium, Bulk. 
-- select name, weightInGms,
-- CASE When weightInGms < 1000 THEN 'Low'
-- 	When weightInGms < 5000 THEN 'Medium'
-- 	else 'Bulk'
-- 	end as  weight_category
-- From zepto_v2;

-- Q8.What is the Total Inventory Weight Per Category 
-- select distinct Category,sum(weightInGms*availableQuantity) as Total_weight
-- from zepto_v2 group by Category order by Total_weight;
