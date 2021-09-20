##LC 574. Winning Candidate

#Solution
SELECT B.Name
FROM Vote A
LEFT JOIN Candidate B ON A.CandidateId = B.id
GROUP BY A.CandidateId, B.Name
ORDER BY COUNT(*) DESC
LIMIT 1
                
#Result Runtime: 369 ms / 76.79%; Memory Usage: 0 MB / 100.00%

#Instruction: least JOIN, most work
