##LC 1853. Convert Date Format

#Solution
SELECT CONCAT(DAYNAME(day), ", ", MONTHNAME(day), " ", DAY(day), ", ", YEAR(day)) day
FROM Days
                
#Result Runtime: 435 ms / 78.14%; Memory Usage: 0 MB / 100.00%

#Instruction: remember some import date functions, CONCAT() is powerful
