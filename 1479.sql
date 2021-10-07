##LC 1479. Sales by Day of the Week

#Solution
SELECT B.item_category Category, 
       COALESCE(SUM(quantity * (DAYOFWEEK(order_date) = 2)), 0) Monday,
       COALESCE(SUM(quantity * (DAYOFWEEK(order_date) = 3)), 0) Tuesday,
       COALESCE(SUM(quantity * (DAYOFWEEK(order_date) = 4)), 0) Wednesday,
       COALESCE(SUM(quantity * (DAYOFWEEK(order_date) = 5)), 0) Thursday,
       COALESCE(SUM(quantity * (DAYOFWEEK(order_date) = 6)), 0) Friday,
       COALESCE(SUM(quantity * (DAYOFWEEK(order_date) = 7)), 0) Saturday,
       COALESCE(SUM(quantity * (DAYOFWEEK(order_date) = 1)), 0) Sunday
FROM Orders A
RIGHT JOIN Items B USING(item_id)
GROUP BY 1
ORDER BY 1

                
#Result Runtime: 418 ms / 74.77%; Memory Usage: 0 MB / 100.00%

#Instruction: note that DAYOFWEEK() starts from Sunday
