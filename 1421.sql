##LC 1421. NPV Queries

#Solution
SELECT A.*, COALESCE(npv, 0) npv
FROM Queries A
LEFT JOIN NPV USING(id, year)
                
#Result Runtime: 641 ms / 83.23%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN with COALESCE, not sure why it's a medium level
