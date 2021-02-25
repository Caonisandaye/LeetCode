##LC 1281. Subtract the Product and Sum of Digits of an Integer

class Solution(object):
    def subtractProductAndSum(self, n):
        """
        :type n: int
        :rtype: int
        """
        prd = 1
        sm = 0
        
        while n > 0:
            d = n % 10
            prd *= d
            sm += d
            n /= 10
        
        return prd - sm
        
#Result Runtime: 16 ms / 72.60%; Memory Usage: 13.2 MB / 99.49%

#Use digit/alphabet conversion also works
