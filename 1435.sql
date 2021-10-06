##LC 1435. Create a Session Bar Chart

#Solution
WITH bins AS (
    SELECT "[0-5>" bin
    UNION
    SELECT "[5-10>" bin
    UNION
    SELECT "[10-15>" bin
    UNION
    SELECT "15 or more" bin
)

SELECT A.*, SUM(B.duration IS NOT NULL) total
FROM bins A
LEFT JOIN Sessions B
ON A.bin = (SELECT CASE WHEN duration < 300 THEN "[0-5>"
                WHEN duration < 600 THEN "[5-10>"
                WHEN duration < 900 THEN "[10-15>"
                ELSE "15 or more" END)
GROUP BY 1
                
#Result Runtime: 330 ms / 89.79%; Memory Usage: 0 MB / 100.00%

#Instruction: can also UNION everything together, both way cause many sub-queries
