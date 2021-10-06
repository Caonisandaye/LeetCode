##LC 618. Students Report By Geography

#Solution
SELECT MIN(America) America, MIN(Asia) Asia, MIN(Europe) Europe
FROM
(SELECT @r1:=0, @r2:=0, @r3:=0) t,
(SELECT CASE WHEN continent = "America" THEN @r1:= @r1+1
             WHEN continent = "Asia" THEN  @r2:= @r2+1
             WHEN continent = "Europe" THEN  @r3:= @r3+1 END row_num,
        CASE WHEN continent = "America" THEN name END America,
        CASE WHEN continent = "Asia" THEN name END Asia,
        CASE WHEN continent = "Europe" THEN name END Europe
 FROM student ORDER BY name) A
 GROUP BY row_num
                
#Result Runtime: 229 ms / 63.80%; Memory Usage: 0 MB / 100.00%

#Instruction: knowing how to use variables
