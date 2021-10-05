##LC 603. Consecutive Available Seats

#Solution
SELECT A.seat_id FROM cinema A
    JOIN cinema B ON A.seat_id + 1 = B.seat_id AND A.free = 1 AND B.free = 1
UNION
SELECT A.seat_id FROM cinema A
    JOIN cinema B ON A.seat_id - 1 = B.seat_id AND A.free = 1 AND B.free = 1
ORDER BY 1

                
#Result Runtime: 354 ms / 48.88%; Memory Usage: 0 MB / 100.00%

#Instruction: can also use a temp table to solve this, or ABS() function
