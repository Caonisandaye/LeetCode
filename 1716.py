##LC 1716. Calculate Money in Leetcode Bank

#Solution
class Solution(object):
    def totalMoney(self, n):
        """
        :type n: int
        :rtype: int
        """
        week, day = n/7, n%7
        
        return (49+7*week)*week/2 + (1+day+2*week)*day/2
                
#Result Runtime: 12 ms / 98.28%; Memory Usage: 13.4 MB / 42.03%

#Instruction: calculate two arithmetic sequence's sum
