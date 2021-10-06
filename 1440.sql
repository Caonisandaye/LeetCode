##LC 1440. Evaluate Boolean Expression

#Solution
SELECT A.*,
       CASE WHEN 
      (CASE WHEN operator = "=" THEN B.value = C.value
            WHEN operator = "<" THEN B.value < C.value
            WHEN operator = ">" THEN B.value > C.value END) = 1 THEN "true" ELSE "false" END value
FROM Expressions A
LEFT JOIN Variables B ON A.left_operand = B.name
LEFT JOIN Variables C ON A.right_operand = C.name

                
#Result Runtime: 890 ms / 96.77%; Memory Usage: 0 MB / 100.00%

#Instruction: simple two LEFT JOINs and implement the logic
