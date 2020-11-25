##LC 1342. Number of Steps to Reduce a Number to Zero

#Solution
class Solution(object):
    def numberOfSteps (self, num):
        """
        :type num: int
        :rtype: int
        """
        stps = 0
        while num > 0:
            if num % 2:
                num -= 1
            else:
                num /= 2
            stps += 1
        
        return stps
        
#Result Runtime: 12 ms / 95.29%; Memory Usage: 13.5 MB / 13.10%

#Instruction: Implement if statement
