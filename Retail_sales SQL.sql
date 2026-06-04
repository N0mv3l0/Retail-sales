-- Databricks notebook source
-- MAGIC %md
-- MAGIC This is my first Query on Notebook
-- MAGIC

-- COMMAND ----------

-- DBTITLE 1,Cell 1
SELECT *
FROM `retail`.`sales`.`retail_sales_dataset`;


SELECT SUM(`Total Amount`) AS total_revenue, `Product Category`
FROM `retail`.`sales`.`retail_sales_dataset`
GROUP BY `Product Category`;

SELECT *
FROM `retail`.`sales`.`retail_sales_dataset`;

SELECT MAX(`Total Amount`) AS highest_amount_spent, `Customer ID`
FROM `retail`.`sales`.`retail_sales_dataset`
GROUP BY `Customer ID`
ORDER BY MAX(`Total Amount`) DESC
LIMIT 5;

SELECT SUM(`Total Amount`) AS total_sales, DATE_FORMAT(`Date`, 'yyyy-MM') AS month
FROM `retail`.`sales`.`retail_sales_dataset`
GROUP BY DATE_FORMAT(`Date`, 'yyyy-MM')
ORDER BY month;

SELECT DATE
FROM `retail`.`sales`.`retail_sales_dataset`;

SELECT SUM(`Total Amount`) AS total_sales, DATE 
FROM `retail`.`sales`.`retail_sales_dataset`
GROUP BY DATE;

SELECT AVG(Age) AS avg_age, `Product Category`
from `retail`.`sales`.`retail_sales_dataset`
GROUP BY `Product Category`;

SELECT SUM(`Total Amount`) AS total_spend, Gender
FROM `retail`.`sales`.`retail_sales_dataset`
GROUP BY Gender;

SELECT COUNT(Quantity) AS total_quantity_sold, `Product Category`
FROM `retail`.`sales`.`retail_sales_dataset`
GROUP BY `Product Category`;

SELECT `Total Amount` `Customer ID`
FROM `retail`.`sales`.`retail_sales_dataset`
WHERE `Total Amount` > 1000;





