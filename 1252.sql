##LC 1251. Average Selling Price

#Solution
SELECT A.product_id, ROUND(SUM(price*units)/SUM(units), 2) average_price
FROM UnitsSold A
JOIN Prices B ON A.purchase_date >= B.start_date AND A.purchase_date <= B.end_date AND A.product_id = B.product_id
GROUP BY 1
                
#Result Runtime: 508 ms / 94.84%; Memory Usage: 0 MB / 100.00%

#Instruction: should use INNER JOIN since we dont care about unsold ones
