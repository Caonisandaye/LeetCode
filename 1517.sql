##LC 1517. Find Users With Valid E-Mails

#Solution
SELECT * FROM Users 
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode.com$'
                
#Result Runtime: 539 ms / 90.87%; Memory Usage: 0 MB / 100.00%

#Instruction: not much to say, an application of regular expression
