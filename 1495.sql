##LC 1495. Friendly Movies Streamed Last Month

#Solution
SELECT DISTINCT title
FROM TVProgram A
JOIN Content B ON SUBSTRING(program_date, 1, 7) = "2020-06" AND A.content_id = B.content_id AND Kids_content = "Y" AND content_type = "Movies"
                
#Result Runtime: 665 ms / 78.29%; Memory Usage: 0 MB / 100.00%

#Instruction: simple usecase of INNER JOIN plus filtering
