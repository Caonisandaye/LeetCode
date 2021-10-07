##LC 1693. Daily Leads and Partners

#Solution
SELECT date_id, make_name, COUNT(DISTINCT lead_id) unique_leads, COUNT(DISTINCT partner_id) unique_partners
FROM DailySales
GROUP BY 1, 2
                
#Result Runtime: 458 ms / 74.46%; Memory Usage: 0 MB / 100.00%

#Instruction: another super easy
