##LC 1119. Remove Vowels from a String

#Solution
class Solution(object):
    def removeVowels(self, S):
        """
        :type S: str
        :rtype: str
        """
        return ''.join([ltr for ltr in S if ltr not in 'aeiou'])

#Result Runtime: 12 ms / 93.81%; Memory Usage: 13.5 MB / 40.48%

#Instruction: Completely don't know the point to make such a boring "new" problem.
