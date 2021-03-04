##LC 1266. Minimum Time Visiting All Points

#Solution
class Solution(object):
    def minTimeToVisitAllPoints(self, points):
        """
        :type points: List[List[int]]
        :rtype: int
        """
        return sum(max(abs(points[i][0]-points[i+1][0]), abs((points[i][1]-points[i+1][1]))) for i in range(len(points)-1))
                
#Result Runtime: 40 ms / 77.52%; Memory Usage: 13.5 MB / 58.14%

#Instruction: the distance for one step is?
