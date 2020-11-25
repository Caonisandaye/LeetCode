##LC 1119. Remove Vowels from a String

#Solution
class Solution(object):
    def removeVowels(self, S):
        """
        :type S: str
        :rtype: str
        """
        return ''.join([l for l in S if l not in 'aeiou'])

#Result Runtime: 16 ms/73.65 Memory Usage: 13.6 MB

#Instruction: Completely don't know the point to make such a boring "new" problem.
