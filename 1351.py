  
##LC 1351. Count Negative Numbers in a Sorted Matrix

#Solution
class Solution(object):
    def countNegatives(self, grid):
        """
        :type grid: List[List[int]]
        :rtype: int
        """
        M, N = len(grid), len(grid[0])
        i, j = M-1, 0
        neg = 0
        
        while i >= 0:
            while j < N and grid[i][j] >= 0:
                j += 1
            neg += N-j
            i -= 1
        
        return neg
                
#Result Runtime: 88 ms / 97.16%; Memory Usage: 14.9 MB / 10.00%

#Instruction: classic binary search method in double-sorted matrix, start from top-right or bottom-left, so that after comparison we can exclude a row or a column
