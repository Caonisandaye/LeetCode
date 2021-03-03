##LC 1668. Maximum Repeating Substring

#Solution
class Solution(object):
    def maxRepeating(self, sequence, word):
        """
        :type sequence: str
        :type word: str
        :rtype: int
        """
        ls = len(sequence)
        lw = len(word)
        repMat = [[0] * (lw) for i in range(ls)]
        
        for i in range(ls):
            for j in range(lw):
                if sequence[i] == word[j]:
                    if i==0 and j==0:
                        repMat[i][j] = 1
                    elif j==0:
                        repMat[i][j] = repMat[i-1][lw-1]+1
                    if i>=1 and j>=1:
                        repMat[i][j] = repMat[i-1][j-1]+1 if repMat[i-1][j-1]>0 else 0

        print repMat
        return max(max(rep) for rep in repMat)/lw
                
#Result Runtime: 84 ms / 6.90%; Memory Usage: 13.3 MB / 90.64%

#Instruction: solve with dp to get a O(MN) solution, while I believe the worst case time complexity is better than 'word*n in sequence' solution,
#the Leetcode server might not agree.
#Think about when a letterwise comparison fails, where can't start from the next uncompared one. i.e. when squence[i] != word[j] the next comparison should be
#sequence[i+1] vs word[0] or sequence[i-j+1] vs word[0]？
