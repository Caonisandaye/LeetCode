##LC 1486. XOR Operation in an Array

#Solution
class Solution(object):
    def xorOperation(self, n, start):
        """
        :type n: int
        :type start: int
        :rtype: int
        """
        output = start
        
        for i in range(n-1):
            start += 2
            output ^= start
        
        return output
                
#Result Runtime: 12 ms / 94.45%; Memory Usage: 13.5 MB / 45.70%

#Instruction: bitwise operation
