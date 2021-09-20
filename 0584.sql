##LC 584. Find Customer Referee

#Solution
SELECT name
FROM customer
WHERE referee_id <> 2 OR referee_id IS NULL
                
#Result Runtime: 459 ms / 52.37%; Memory Usage: 0 MB / 100.00%

#Instruction: careful about NULL
