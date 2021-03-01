##LC 1221. Split a String in Balanced Strings

#Solution
class Solution(object):
    def balancedStringSplit(self, s):
        """
        :type s: str
        :rtype: int
        """
        splt = 0
        ct = 0
        
        for char in s:
            if char == "R":
                ct += 1
            else:
                ct -= 1
            splt += ct == 0
        
        return splt
                
#Result Runtime: 20 ms / 54.98%; Memory Usage: 13.5 MB / 30.97%

#Instruction: simple math
