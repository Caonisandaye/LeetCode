##LC 626. Exchange Seats

#Solution
SELECT CASE WHEN id % 2 = 0 THEN id - 1
            WHEN id % 2 = 1 AND id < (SELECT COUNT(*) FROM seat) THEN id + 1
            ELSE id END id, 
       student 
FROM seat
ORDER BY 1
                
#Result Runtime: 265 ms / 58.14%; Memory Usage: 0 MB / 100.00%

#Instruction: be careful with the last id
