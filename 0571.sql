##LC 571. Find Median Given Frequency of Numbers

#Solution
SELECT ROUND(AVG(Number), 4) median FROM (
    SELECT Number, SUM(Frequency) OVER(ORDER BY Number) lft, SUM(Frequency) OVER(ORDER BY Number DESC) rght, SUM(Frequency) OVER() sm
    FROM Numbers
) A WHERE 2 * lft >= sm AND 2 * rght >= sm

#Result Runtime: 178 ms / 74.37%; Memory Usage: 0 MB / 100.00%

#Instruction: flexibly using window functions, while variable might also work
