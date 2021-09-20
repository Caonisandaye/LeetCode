##LC 262. Trips and Users

#Solution
SELECT Request_at Day, ROUND(SUM(Status <> "completed")/COUNT(*), 2) "Cancellation Rate"
FROM Trips A
JOIN Users B ON A.Client_Id = B.Users_Id AND B.Role = "client" AND B.Banned = "No"
JOIN Users C ON A.Driver_Id = C.Users_Id AND C.Role = "driver" AND C.Banned = "No"
WHERE A.Request_at >= "2013-10-01" AND A.Request_at <= "2013-10-03"
GROUP BY 1
                
#Result Runtime: 423 ms / 78.01%; Memory Usage: 0 MB / 100.00%

#Instruction: use the right JOIN to perform the right logic
