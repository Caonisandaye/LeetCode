##LC 1454. Active Users

#Solution
SELECT DISTINCT A.id, name
FROM Logins A
JOIN Logins B ON A.id = B.id AND DATEDIFF(A.login_date, B.login_date) BETWEEN 1 AND 4
LEFT JOIN Accounts C ON A.id = C.id
GROUP BY 1, 2, A.login_date
HAVING COUNT(DISTINCT B.login_date) = 4
                
#Result Runtime: 1079 ms / 85.17%; Memory Usage: 0 MB / 100.00%

#Instruction: again, group function COUNT(*) outperform too many LEFT JOINs when consecutive number is fixed
