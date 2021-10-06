##LC 1083. Sales Analysis II

#Solution
WITH temp AS (
    SELECT buyer_id, product_name FROM Sales JOIN Product USING(product_id)
)

SELECT DISTINCT buyer_id 
FROM temp
WHERE product_name = "S8" AND buyer_id NOT IN
    (SELECT buyer_id FROM temp WHERE product_name = "iPhone")
                
#Result Runtime: 1022 ms / 59.04%; Memory Usage: 0 MB / 100.00%

#Instruction: using SUM() is also a good idea
