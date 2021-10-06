##LC 1098. Unpopular Books

#Solution
SELECT A.book_id, name
FROM Books A
LEFT JOIN Orders B
ON A.book_id = B.book_id AND DATEDIFF("2019-06-23", B.dispatch_date) <= 365
WHERE DATEDIFF("2019-06-23", A.available_from) > 30
GROUP BY 1
HAVING SUM(COALESCE(quantity, 0)) < 10

#Result Runtime: 713 ms / 67.41%; Memory Usage: 0 MB / 100.00%

#Instruction: we must be very careful with unsold ones, that's why we need LEFT JOIN here
