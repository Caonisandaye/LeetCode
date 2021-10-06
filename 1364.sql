##LC 1364. Number of Trusted Contacts of a Customer

#Solution
WITH cust_contact AS (
    SELECT A.customer_id, A.customer_name, 
           SUM(B.user_id IS NOT NULL) contacts_cnt,
           SUM(C.customer_id IS NOT NULL) trusted_contacts_cnt
    FROM Customers A
    LEFT JOIN Contacts B 
        ON A.customer_id = B.user_id
    LEFT JOIN Customers C 
        ON B.contact_name = C.customer_name AND B.contact_email = C.email
    GROUP BY 1, 2
)

SELECT invoice_id, customer_name, price, contacts_cnt, trusted_contacts_cnt
FROM Invoices A
LEFT JOIN cust_contact B ON A.user_id = B.customer_id
ORDER BY 1
                
#Result Runtime: 1098 ms / 74.25%; Memory Usage: 0 MB / 100.00%

#Instruction: choose the correct JOIN
