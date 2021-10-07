##LC 1511. Customer Order Frequency

#Solution
WITH monthspend AS (
    SELECT customer_id, SUBSTRING(order_date, 1, 7) month, SUM(quantity * price) spend
    FROM Orders A
    JOIN Product B ON A.product_id = B.product_id
    GROUP BY 1, 2
)

SELECT customer_id, name
FROM Customers
WHERE customer_id IN (SELECT customer_id FROM monthspend WHERE month = "2020-06" AND spend >= 100)
  AND customer_id IN (SELECT customer_id FROM monthspend WHERE month = "2020-07" AND spend >= 100)
                
#Result Runtime: 663 ms / 76.09%; Memory Usage: 0 MB / 100.00%

#Instruction: a Temp table works better in this case than sub-queries
