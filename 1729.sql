##LC 1729. Find Followers Count

#Solution
SELECT user_id, COUNT(*) followers_count
FROM Followers
GROUP BY 1
ORDER BY 1
                
#Result Runtime: 433 ms / 89.66%; Memory Usage: 0 MB / 100.00%

#Instruction: luckily dont care about 0/NULLs
