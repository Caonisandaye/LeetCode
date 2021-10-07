##LC 1715. Count Apples and Oranges

#Solution
SELECT SUM(A.apple_count) + SUM(IFNULL(B.apple_count, 0)) apple_count, SUM(A.orange_count) + SUM(IFNULL(B.orange_count, 0)) orange_count
FROM Boxes A
LEFT JOIN Chests B USING(chest_id)

#Result Runtime: 807 ms / 64.32%; Memory Usage: 0 MB / 100.00%

#Instruction: put IFNULL to the right place
