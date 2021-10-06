##LC 1127. User Purchase Platform

#Solution
WITH dates AS (SELECT * FROM 
    (SELECT DISTINCT spend_date FROM spending) A CROSS JOIN
    (SELECT "mobile" platform UNION SELECT "desktop" UNION SELECT "both") B),

cates AS
(
    SELECT spend_date, COUNT(*) total_users, SUM(dsk_amt + mob_amt) total_amount,
           CASE WHEN dsk_amt = 0 THEN "mobile"
                WHEN mob_amt = 0 THEN "desktop"
                ELSE "both" END platform
    FROM (
        SELECT user_id, spend_date, 
               SUM((platform = "desktop") * amount) dsk_amt,
               SUM((platform = "mobile") * amount) mob_amt
        FROM Spending GROUP BY 1, 2
        ) A GROUP BY 1, 4
)

SELECT A.spend_date, A.platform,
       COALESCE(total_amount, 0) total_amount,
       COALESCE(total_users, 0) total_users
FROM dates A LEFT JOIN cates B USING(spend_date, platform)
                
#Result Runtime: 452 ms / 99.80%; Memory Usage: 0 MB / 100.00%

#Instruction: use SUM() > 0 to decide which category of platform the user belongs to
