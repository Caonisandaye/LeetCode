##LC 1164. Product Price at a Given Date

#Solution
SELECT A.product_id, COALESCE(new_price, 10) price FROM
(
    SELECT DISTINCT product_id FROM Products
) A LEFT JOIN
(
    SELECT product_id, new_price,
           RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) rk 
    FROM Products
    WHERE change_date <= "2019-08-16"
) B ON A.product_id = B.product_id AND B.rk = 1
                
#Result Runtime: 353 ms / 92.53%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK() outperform MAX() in this case
