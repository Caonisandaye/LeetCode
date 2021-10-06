##LC 1445. Apples & Oranges

#Solution
SELECT A.sale_date, A.sold_num - B.sold_num diff
FROM Sales A
JOIN Sales B ON A.sale_date = B.sale_date AND A.fruit = "apples" AND B.fruit = "oranges"
                
#Result Runtime: 259 ms / 87.84%; Memory Usage: 0 MB / 100.00%

#Instruction: simple INNER JOIN with the right condition
