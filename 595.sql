##LC 595. Big Countries

#Solution
SELECT name, population, area
FROM World
WHERE area > 3000000 OR population > 25000000
                
#Result Runtime: 241 ms / 63.71%; Memory Usage: 0 MB / 100.00%

#Instruction: simple filtering
