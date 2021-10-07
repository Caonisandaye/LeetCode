##LC 1757. Recyclable and Low Fat Products

#Solution
SELECT product_id
FROM Products
WHERE low_fats = "Y" AND recyclable = "Y"
                
#Result Runtime: 437 ms / 75.96%; Memory Usage: 0 MB / 100.00%

#Instruction: simple filtering
