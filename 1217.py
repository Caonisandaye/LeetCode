##LC 1217. Minimum Cost to Move Chips to The Same Position

#Solution
class Solution(object):
    def minCostToMoveChips(self, position):
        """
        :type position: List[int]
        :rtype: int
        """
        oddEven = [0, 0]
        
        for p in position:
            oddEven[p%2] += 1
        
        return min(oddEven)
                
#Result Runtime: 20 ms / 70.15%; Memory Usage: 13.3 MB / 95.02%

#Instruction: actually just move odd to even or vice versa
