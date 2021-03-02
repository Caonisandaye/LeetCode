##LC 1614. Maximum Nesting Depth of the Parentheses

#Solution
class Solution(object):
    def maxDepth(self, s):
        """
        :type s: str
        :rtype: int
        """
        dp = maxDp = 0
        
        for char in s:
            if char == '(':
                dp += 1
                maxDp = max(dp, maxDp)
            elif char == ')':
                dp -= 1

        return maxDp
                
#Result Runtime: 16 ms / 83.89%; Memory Usage: 13.5 MB / 31.33%

#Instruction: use ++/-- to keep track of nested level
