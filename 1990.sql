##LC 1990. Count the Number of Experiments

#Solution
WITH Cate AS (SELECT * FROM (
    SELECT "Android" platform
    UNION
    SELECT "IOS" platform
    UNION
    SELECT "Web" platform
) A JOIN (
    SELECT "Reading" experiment_name
    UNION
    SELECT "Sports" experiment_name
    UNION
    SELECT "Programming" experiment_name
) B)

SELECT A.*, SUM(experiment_id IS NOT NULL) num_experiments
FROM Cate A LEFT JOIN Experiments B USING(platform, experiment_name)
GROUP BY 1, 2

#Result Runtime: 491 ms / 63.64%; Memory Usage: 0 MB / 100.00%

#Instruction: create an all-category table to avoid non-appearing ones
