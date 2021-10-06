##LC 1159. Market Analysis II

#Solution
SELECT A.user_id seller_id, 
       CASE WHEN A.favorite_brand = C.item_brand THEN "yes" ELSE "no" END 2nd_item_fav_brand
FROM Users A LEFT JOIN 
(    
    SELECT seller_id, item_id, RANK() OVER(PARTITION BY seller_id ORDER BY order_date) rk
    FROM Orders) B 
ON A.user_id = B.seller_id AND B.rk = 2
LEFT JOIN Items C
ON B.item_id = C.item_id
                
#Result Runtime: 895 ms / 94.35%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK to get second item first before JOIN, the NULLs can be automatically taken care of in this case
