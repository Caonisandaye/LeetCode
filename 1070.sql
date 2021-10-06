##LC 1070. Product Sales Analysis III

#Solution
SELECT product_id, first_year, quantity, price FROM
(
    SELECT product_id, year first_year, quantity, price,
           RANK() OVER(PARTITION BY product_id ORDER BY year) rk
    FROM Sales
) A WHERE rk = 1
                
#Result Runtime: 944 ms / 90.41%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK() or sub-query works in this case
