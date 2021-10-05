##LC 585. Investments in 2016

#Solution
SELECT SUM(TIV_2016) TIV_2016 FROM
(
    SELECT TIV_2016, SUM(1) OVER(PARTITION BY TIV_2015) same_2015, SUM(1) OVER(PARTITION BY LAT, LON) same_loc
    FROM insurance
) A
WHERE same_2015 > 1 AND same_loc = 1
                
#Result Runtime: 424 ms / 85.60%; Memory Usage: 0 MB / 100.00%

#Instruction: SUM() can be used as a window function too
