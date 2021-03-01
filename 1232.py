##LC 1232. Check If It Is a Straight Line

#Solution
class Solution(object):
    def checkStraightLine(self, coordinates):
        """
        :type coordinates: List[List[int]]
        :rtype: bool
        """
        p0, p1 = coordinates[:2]

        for p in coordinates[2:]:
            if (p1[0]-p0[0])*(p[1]-p0[1]) != (p1[1]-p0[1])*(p[0]-p0[0]):
                return False
        
        return True
                
#Result Runtime: 44 ms / 68.89%; Memory Usage: 14.1 MB / 11.85%

#Instruction: simple math about parallel lines
