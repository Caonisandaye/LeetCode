##LC 1225. Report Contiguous Dates

#Solution
WITH S2019 AS (SELECT * FROM Succeeded WHERE YEAR(success_date) = 2019),
     F2019 AS (SELECT * FROM Failed WHERE YEAR(fail_date) = 2019),

FailStartEnd AS (
    SELECT S.fail_date start_date, MIN(E.fail_date) end_date FROM
    (SELECT A.fail_date FROM F2019 A 
    LEFT JOIN F2019 B ON DATEDIFF(A.fail_date, B.fail_date) = 1
    WHERE B.fail_date IS NULL) S LEFT JOIN
    (SELECT B.fail_date FROM F2019 A 
    RIGHT JOIN F2019 B ON DATEDIFF(A.fail_date, B.fail_date) = 1
    WHERE A.fail_date IS NULL) E ON S.fail_date <= E.fail_date
    GROUP BY 1
),

SuccessStartEnd AS (
    SELECT S.success_date start_date, MIN(E.success_date) end_date FROM
    (SELECT A.success_date FROM S2019 A 
    LEFT JOIN S2019 B ON DATEDIFF(A.success_date, B.success_date) = 1
    WHERE B.success_date IS NULL) S LEFT JOIN
    (SELECT B.success_date FROM S2019 A 
    RIGHT JOIN S2019 B ON DATEDIFF(A.success_date, B.success_date) = 1
    WHERE A.success_date IS NULL) E ON S.success_date <= E.success_date
    GROUP BY 1
)

SELECT "succeeded" AS period_state, start_date, end_date FROM SuccessStartEnd
UNION
SELECT "failed" AS period_state, start_date, end_date FROM FailStartEnd
ORDER BY 2
                
#Result Runtime: 1081 ms / 39.83%; Memory Usage: 0 MB / 100.00%

#Instruction: XXXXXX
