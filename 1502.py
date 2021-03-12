##LC 1502. Can Make Arithmetic Progression From Sequence

#Solution
class Solution(object):
    def canMakeArithmeticProgression(self, arr):
        """
        :type arr: List[int]
        :rtype: bool
        """
        bot2 = [sys.maxint, sys.maxint]
        
        for n in arr:
            if n < bot2[0]:
                bot2 = [n, bot2[0]]
            else:
                bot2[1] = min(bot2[1], n)
                
        d = bot2[1]-bot2[0]
        arrset = set(arr)
        if not d:
            return len(arrset) == 1

        for i in range(len(arr)):
            if bot2[0]+i*d not in arrset:
                return False
        
        return True
                
#Result Runtime: 24 ms / 84.93%; Memory Usage: 13.9 MB / 8.55%

#Instruction: find two mininum to get common delta d, then check for every theoretic element, this will have linear runtime, while be very careful with corner cases d=0.
