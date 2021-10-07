##LC 1623. All Valid Triplets That Can Represent a Country

#Solution
SELECT A.student_name member_A, B.student_name member_B, C.student_name member_C
FROM SchoolA A
JOIN SchoolB B ON A.student_id <> B.student_id AND A.student_name <> B.student_name 
JOIN SchoolC C ON A.student_id <> C.student_id AND B.student_id <> C.student_id AND A.student_name <> C.student_name AND B.student_name <> C.student_name
                
#Result Runtime: 1970 ms / 63.26%; Memory Usage: 0 MB / 100.00%

#Instruction: SELECT FROM A, B, C WHERE.... also works in this case
