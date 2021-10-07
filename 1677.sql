##LC 1677. Product's Worth Over Invoices

#Solution
SELECT name, IFNULL(SUM(rest), 0) rest, IFNULL(SUM(paid), 0) paid,
       IFNULL(SUM(canceled), 0) canceled, IFNULL(SUM(refunded), 0) refunded
FROM Product A
LEFT JOIN Invoice USING(product_id)
GROUP BY A.product_id, 1
ORDER BY 1

#Result Runtime: 597 ms / 79.73%; Memory Usage: 0 MB / 100.00%

#Instruction: simple JOIN and GROUP BY and add everything together
