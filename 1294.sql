##LC 1294. Weather Type in Each Country

#Solution
SELECT A.country_name,
       CASE WHEN AVG(weather_state) <= 15 THEN "Cold"
            WHEN AVG(weather_state) >= 25 THEN "Hot"
            ELSE "Warm" END weather_type
FROM Countries A
JOIN Weather B
ON A.country_id = B.country_id AND SUBSTRING(B.day, 1, 7) = "2019-11"
GROUP BY A.country_id, 1
                
#Result Runtime: 452 ms / 87.13%; Memory Usage: 0 MB / 100.00%

#Instruction: simple group function
