##LC 1768. Merge Strings Alternately

#Solution
class Solution(object):
    def mergeAlternately(self, word1, word2):
        """
        :type word1: str
        :type word2: str
        :rtype: str
        """
        output = ''
        l = min(len(word1), len(word2))
        
        for i in range(l):
            output += word1[i]+word2[i]
        
        return output+word1[l:]+word2[l:]
                
#Result Runtime: 12 ms / 100.00%; Memory Usage: 13.3 MB / 100.00%

#Instruction: see the numbers? Now who's your daddy?
