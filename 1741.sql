##LC 1741. Find Total Time Spent by Each Employee

#Solution
SELECT event_day day, emp_id, SUM(out_time-in_time) total_time
FROM Employees
GROUP BY 1, 2
                
#Result Runtime: 393 ms / 96.04%; Memory Usage: 0 MB / 100.00%

#Instruction: simple group function
