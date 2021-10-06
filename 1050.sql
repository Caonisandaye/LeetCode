##LC 1050. Actors and Directors Who Cooperated At Least Three

#Solution
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY 1, 2
HAVING COUNT(DISTINCT timestamp) >= 3
                
#Result Runtime: 325 ms / 73.54%; Memory Usage: 0 MB / 100.00%

#Instruction: simple grouping
