##LC 1180. Count Substrings with Only One Distinct Letter

#Solution
class Solution(object):
    def countLetters(self, S):
        """
        :type S: str
        :rtype: int
        """
        rep = ans = 0
        cur = ''
        S += '/'
        
        for s in S:
            if s == cur:
                rep += 1
            else:
                ans += rep*(rep+1)/2
                cur = s
                rep = 1
        
        return ans
                
#Result Runtime: 16 ms / 85.37%; Memory Usage: 13.4 MB / 86.59%

#Instruction: how many distinct letter substrings for a N repeated string?
