##LC 1725. Number Of Rectangles That Can Form The Largest Square

#Solution
class Solution(object):
    def countGoodRectangles(self, rectangles):
        """
        :type rectangles: List[List[int]]
        :rtype: int
        """
        mx = ct = 0
        
        for r in rectangles:
            if min(r) > mx:
                mx, ct = min(r), 1
            elif min(r) == mx:
                ct += 1
        
        return ct
                
#Result Runtime: 140 ms / 98.03%; Memory Usage: 14 MB / 90.00%

#Instruction: slightly advanced version with single for loop and record largest
