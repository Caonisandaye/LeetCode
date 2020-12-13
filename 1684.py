##LC 1684. Count the Number of Consistent Strings

#Solution
class Solution(object):
    def countConsistentStrings(self, allowed, words):
        """
        :type allowed: str
        :type words: List[str]
        :rtype: int
        """
        allowed = set(allowed)
        num_of_consis = 0
        
        for wd in words:
            consis = 1
            for alp in wd:
                consis *= alp in allowed
            num_of_consis += consis
        
        return num_of_consis
        
#Result Runtime: 212 ms / 100.00%; Memory Usage: 16 MB / 100.00%

#Instruction: Implement set(), coersion of boolean.
