##LC 1450. Number of Students Doing Homework at a Given Time

#Solution
class Solution(object):
    def busyStudent(self, startTime, endTime, queryTime):
        """
        :type startTime: List[int]
        :type endTime: List[int]
        :type queryTime: int
        :rtype: int
        """
        return sum(queryTime >= startTime[i] and queryTime <= endTime[i] for i in range(len(startTime)))
                
#Result Runtime: 20 ms / 93.92%; Memory Usage: 13.5 MB / 43.29%

#Instruction: simple for loop
