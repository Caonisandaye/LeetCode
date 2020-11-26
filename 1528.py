##LC 1528. Shuffle String

#Solution
class Solution(object):
    def restoreString(self, s, indices):
        """
        :type s: str
        :type indices: List[int]
        :rtype: str
        """
        L = len(s)
        sfld_str = [''] * L
        for i in range(L):
            sfld_str[indices[i]] = s[i]
        
        return ''.join(sfld_str)
                
#Result Runtime: 40 ms / 60.51%; Memory Usage: 13.6 MB / 37.55%

#Instruction: Understand the right way to shuffle. Move the letter of the string to each index instead exact the letter of the string on each index.
