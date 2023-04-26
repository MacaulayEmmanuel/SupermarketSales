-- 1. Which branch has the best results in the loyalty program?
SELECT 
    Branch,
    AVG(Rating) AS Average_Rating
FROM 
    market
GROUP BY
     Branch
ORDER BY
     Average_Rating DESC
LIMIT 1;

-- 2. Does the membership depend on customer rating?
SELECT
    Customer_type,
    AVG(Rating) AS avg_rating
FROM
    market
GROUP BY
    Customer_type;
-- ans. no, the membership does not determine the customer rating


--3. Does gross income depend on the proportion of customers in the loyalty program? On payment method?

SELECT 
    Customer_type,
    Payment,
    AVG(gross_income) AS avg_gross_income
FROM 
    market
GROUP BY 
    Customer_type, Payment;

--4. Are there any differences in indicators between men and women?
SELECT Gender, 
    AVG(Unit_price) AS Avg_Unit_price, 
    AVG(Quantity) AS Avg_Quantity, 
    AVG(Total) AS Avg_Total, 
    AVG(cogs) AS Avg_cogs,
    AVG(gross_margin_percentage) AS Avg_gross_margin_percentage, 
    AVG(gross_income) AS Avg_gross_income, 
    AVG(Rating) AS Avg_Rating
FROM 
    market
GROUP BY 
    Gender;

-- 5. Which product category generates the highest income?
SELECT Product_line, 
    SUM(Total) AS Total_income
FROM 
    market
GROUP BY 
    Product_line
ORDER BY 
    Total_income DESC
LIMIT
    1;
