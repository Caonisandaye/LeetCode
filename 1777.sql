##LC 1777. Product's Price for Each Store

#Solution
WITH product_list AS (
    SELECT DISTINCT product_id FROM Products
)

SELECT A.product_id, B.price store1, C.price store2, D.price store3
FROM product_list A
LEFT JOIN products B ON A.product_id = B.product_id AND B.store = "store1"
LEFT JOIN products C ON A.product_id = C.product_id AND C.store = "store2"
LEFT JOIN products D ON A.product_id = D.product_id AND D.store = "store3"
                
#Result Runtime: 420 ms / 89.59%; Memory Usage: 0 MB / 100.00%

#Instruction: a checklist is always useful in this case
