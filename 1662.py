##LC 1662. Check If Two String Arrays are Equivalent

#Solution
class Solution(object):
    def arrayStringsAreEqual(self, word1, word2):
        """
        :type word1: List[str]
        :type word2: List[str]
        :rtype: bool
        """
        return ''.join(word1) == ''.join(word2)
        
#Result Runtime: 16 ms / 92.21%; Memory Usage: 13.6 MB / 52.65%

#Instruction: Implement .join()
