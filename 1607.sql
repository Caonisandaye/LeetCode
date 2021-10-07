##LC 1607. Sellers With No Sales

#Solution
SELECT seller_name
FROM Seller A
LEFT JOIN Orders B ON A.seller_id = B.seller_id 
                   AND SUBSTRING(B.sale_date, 1, 4) = "2020"
WHERE B.seller_id IS NULL
ORDER BY 1
                
#Result Runtime: 643 ms / 93.29%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN and filtering logic
