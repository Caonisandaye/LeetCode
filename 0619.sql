##LC 619. Biggest Single Number

#Solution
SELECT MAX(num) num FROM
(
    SELECT num, COUNT(*) cnt FROM my_numbers GROUP BY 1
) A
WHERE cnt = 1
                
#Result Runtime: 332 ms / 50.37%; Memory Usage: 0 MB / 100.00%

#Instruction: use group function MAX() can give out NULL value if not applicable
