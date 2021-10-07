##LC 1596. The Most Frequently Ordered Products for Each Customer

#Solution
WITH Freqs AS (
    SELECT customer_id, A.product_id, product_name, COUNT(*) Freq, RANK() OVER(PARTITION BY customer_id ORDER BY COUNT(*) DESC) rk
    FROM Orders A
    LEFT JOIN Products B USING(product_id)
    GROUP BY 1, 2, 3
)

SELECT customer_id, product_id, product_name FROM Freqs WHERE rk = 1
                
#Result Runtime: 1541 ms / 97.91%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK() outperform GROUP BY in this case
