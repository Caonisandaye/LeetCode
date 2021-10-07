##LC 1501. Countries You Can Safely Invest In

#Solution
WITH call_code AS (
    SELECT caller_id, duration, SUBSTRING(phone_number, 1, 3) country_code
    FROM Calls A LEFT JOIN Person B ON A.caller_id = B.id
    UNION ALL
    SELECT callee_id, duration, SUBSTRING(phone_number, 1, 3) country_code
    FROM Calls A LEFT JOIN Person B ON A.callee_id = B.id
)

SELECT name country
FROM Country A
LEFT JOIN call_code B USING(country_code)
GROUP BY 1, A.country_code
HAVING(AVG(duration) > (SELECT AVG(duration) FROM Calls))
                
#Result Runtime: 967 ms / 58.40%; Memory Usage: 0 MB / 100.00%

#Instruction: using Temp works better in this case, note that if both caller and callee from same country, the call should be calculated twice
