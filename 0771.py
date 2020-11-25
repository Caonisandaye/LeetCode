##LC 771. Jewels and Stones

#Solution
class Solution(object):
    def numJewelsInStones(self, J, S):
        """
        :type J: str
        :type S: str
        :rtype: int
        """
        Jset = set([j for j in J])
        
        return sum([s in Jset for s in S])
        
#Result Runtime: 12 ms / 96.43%; Memory Usage: 13.8 MB / 9.02%

#Instruction: Implement set()
