##LC 1484. Group Sold Products By The Date

#Solution
SELECT sell_date,
       COUNT(DISTINCT product) num_sold,
       GROUP_CONCAT(DISTINCT product ORDER BY 1) products
FROM Activities
GROUP BY 1

#Result Runtime: 382 ms / 72.38%; Memory Usage: 0 MB / 100.00%

#Instruction: not much to say, very rare usecase of GROUP_CONCAT
