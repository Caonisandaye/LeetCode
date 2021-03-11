  
##LC 1704. Determine if String Halves Are Alike

#Solution
class Solution(object):
    def halvesAreAlike(self, s):
        """
        :type s: str
        :rtype: bool
        """
        left = right = 0
        L = len(s)/2
        vowel = 'aeiouAEIOU'
        
        for i in range(L):
            left += s[i] in vowel
            right += s[i+L] in vowel
        
        return left == right
                
#Result Runtime: 24 ms / 77.45%; Memory Usage: 13.5 MB / 24.66%

#Instruction: simple for loop
