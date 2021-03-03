##LC 1732. Find the Highest Altitude

#Solution
class Solution(object):
    def largestAltitude(self, gain):
        """
        :type gain: List[int]
        :rtype: int
        """
        hst = cur = 0
        
        for g in gain:
            cur += g
            hst = max(hst, cur)
        
        return hst
                
#Result Runtime: 12 ms / 99.85%; Memory Usage: 13.3 MB / 72.94%

#Instruction: simple for loop
