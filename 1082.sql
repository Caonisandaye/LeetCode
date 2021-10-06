##LC 1082. Sales Analysis I

#Solution
SELECT seller_id FROM Sales
GROUP BY 1
HAVING SUM(price) = 
    (SELECT SUM(price) FROM Sales GROUP BY seller_id ORDER BY 1 DESC LIMIT 1)
                
#Result Runtime: 956 ms / 76.25%; Memory Usage: 0 MB / 100.00%

#Instruction: cant do HAVING .. IN ..
