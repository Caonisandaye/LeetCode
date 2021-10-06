##LC 1179. Reformat Department Table

#Solution
SELECT A.id,
       M1.revenue Jan_Revenue,
       M2.revenue Feb_Revenue,
       M3.revenue Mar_Revenue,
       M4.revenue Apr_Revenue,
       M5.revenue May_Revenue,
       M6.revenue Jun_Revenue,
       M7.revenue Jul_Revenue,
       M8.revenue Aug_Revenue,
       M9.revenue Sep_Revenue,
       M10.revenue Oct_Revenue,
       M11.revenue Nov_Revenue,
       M12.revenue Dec_Revenue 
FROM (SELECT DISTINCT id FROM Department) A
LEFT JOIN Department M1 ON A.id = M1.id AND M1.month = "Jan"
LEFT JOIN Department M2 ON A.id = M2.id AND M2.month = "Feb"
LEFT JOIN Department M3 ON A.id = M3.id AND M3.month = "Mar"
LEFT JOIN Department M4 ON A.id = M4.id AND M4.month = "Apr"
LEFT JOIN Department M5 ON A.id = M5.id AND M5.month = "May"
LEFT JOIN Department M6 ON A.id = M6.id AND M6.month = "Jun"
LEFT JOIN Department M7 ON A.id = M7.id AND M7.month = "Jul"
LEFT JOIN Department M8 ON A.id = M8.id AND M8.month = "Aug"
LEFT JOIN Department M9 ON A.id = M9.id AND M9.month = "Sep"
LEFT JOIN Department M10 ON A.id = M10.id AND M10.month = "Oct"
LEFT JOIN Department M11 ON A.id = M11.id AND M11.month = "Nov"
LEFT JOIN Department M12 ON A.id = M12.id AND M12.month = "Dec"
                
#Result Runtime: 451 ms / 66.52%; Memory Usage: 0 MB / 100.00%

#Instruction: not sure if there's a more convenient way to enumerate this, but I think it's really shabby
