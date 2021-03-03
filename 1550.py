##LC 1550. Three Consecutive Odds

#Solution
class Solution(object):
    def threeConsecutiveOdds(self, arr):
        """
        :type arr: List[int]
        :rtype: bool
        """
        odd = 0
        
        for n in arr:
            if n%2 == 1:
                if odd == 2:
                    return True
                else:
                    odd += 1
            else:
                odd = 0
        
        return False
                
#Result Runtime: 28 ms / 88.35%; Memory Usage: 13.4 MB / 95.11%

#Instruction: XXXXXX
