##LC 0. 1571. Warehouse Manager

#Solution
SELECT name warehouse_name, SUM(units * Width * Length * Height) volume
FROM Warehouse A
LEFT JOIN products B USING(product_id)
GROUP BY 1
                
#Result Runtime: 473 ms / 79.97%; Memory Usage: 0 MB / 100.00%

#Instruction: simple calculation with GROUP BY
