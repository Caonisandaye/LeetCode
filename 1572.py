##LC 1572. Matrix Diagonal Sum

#Solution
class Solution(object):
    def diagonalSum(self, mat):
        """
        :type mat: List[List[int]]
        :rtype: int
        """
        d = len(mat)
        ans = 0
        
        for i in range(d):
            ans += mat[i][i] + mat[d-1-i][i]
        if d%2 == 1:
            ans -= mat[d/2][d/2]
        
        return ans
                
#Result Runtime: 88 ms / 56.87%; Memory Usage: 13.7 MB / 45.15%

#Instruction: remove middle for odd dimension
