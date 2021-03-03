##LC 1304. Find N Unique Integers Sum up to Zero

#Solution
class Solution(object):
    def sumZero(self, n):
        """
        :type n: int
        :rtype: List[int]
        """
        
        return range(1, n/2+1) + range(-(n/2), 0) + ([0] if n%2 == 1 else [])
                
#Result Runtime: 16 ms / 91.33%; Memory Usage: 13.4 MB / 92.43%

#Instruction: notice the calculation order, 'if else' is in low order
