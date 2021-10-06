##LC 1148. Article Views I

#Solution
SELECT DISTINCT author_id id
FROM Views
WHERE author_id = viewer_id
ORDER BY 1
                
#Result Runtime: 357 ms / 83.57%; Memory Usage: 0 MB / 100.00%

#Instruction: simple filtering, no need to JOIN!!!
