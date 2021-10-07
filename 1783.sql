##LC 1783. Grand Slam Titles

#Solution
WITH Win AS (SELECT Wimbledon, COUNT(*) champ FROM Championships GROUP BY 1),
Fr AS (SELECT Fr_open, COUNT(*) champ FROM Championships GROUP BY 1),
US AS (SELECT US_open, COUNT(*) champ FROM Championships GROUP BY 1),
Au AS (SELECT Au_open, COUNT(*) champ FROM Championships GROUP BY 1)

SELECT player_id, player_name, COALESCE(B.champ, 0) + COALESCE(C.champ, 0) + COALESCE(D.champ, 0) + COALESCE(E.champ, 0) grand_slams_count
FROM Players A
LEFT JOIN Win B ON A.player_id = B.Wimbledon
LEFT JOIN Fr C ON A.player_id = C.Fr_open
LEFT JOIN US D ON A.player_id = D.US_open
LEFT JOIN Au E ON A.player_id = E.Au_open
HAVING grand_slams_count > 0
                
#Result Runtime: 993 ms / 97.66%; Memory Usage: 0 MB / 100.00%

#Instruction: again, GROUP BY first before joining to avoid duplicates
