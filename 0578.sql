##LC 578. Get Highest Answer Rate Question

#Solution
SELECT question_id survey_log
FROM survey_log
GROUP BY 1
ORDER BY SUM(action = "answer")/SUM(action = "show") DESC
LIMIT 1
                
#Result Runtime: 213 ms / 72.30%; Memory Usage: 0 MB / 100.00%

#Instruction: actually dealing with ties might be slightly more complex than this
