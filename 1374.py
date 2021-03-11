##LC 1374. Generate a String With Characters That Have Odd Counts

#Solution
class Solution(object):
    def generateTheString(self, n):
        """
        :type n: int
        :rtype: str
        """
        return 'a'*(n-1+n%2) + 'b'*(1-n%2)
                
#Result Runtime: 12 ms / 92.08%; Memory Usage: 13.5 MB / 44.53%

#Instruction: how to use redisual to ganrantee an odd number?
