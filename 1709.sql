##LC 1709. Biggest Window Between Visits

#Solution
SELECT user_id, MAX(DATEDIFF(next_date, visit_date)) biggest_window
FROM(
    SELECT A.user_id, A.visit_date, IFNULL(MIN(B.visit_date), "2021-01-01") next_date
    FROM UserVisits A
    LEFT JOIN UserVisits B ON A.user_id = B.user_id AND A.visit_date < B.visit_date
    GROUP BY 1, 2
) A GROUP BY 1

#Result Runtime: 411 ms / 96.62%; Memory Usage: 0 MB / 100.00%

#Instruction: smart way to get next visiting date
