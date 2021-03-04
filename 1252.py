##LC 1252. Cells with Odd Values in a Matrix

#Solution
class Solution(object):
    def oddCells(self, n, m, indices):
        """
        :type n: int
        :type m: int
        :type indices: List[List[int]]
        :rtype: int
        """
        row = [0]*n
        col = [0]*m
        
        for ind in indices:
            row[ind[0]] += 1
            col[ind[1]] += 1
        
        return sum([(row[i]+col[j])%2 for i in range(n) for j in range(m)])
                
#Result Runtime: 24 ms / 90.25%; Memory Usage: 13.3 MB / 84.81%

#Instruction: check number of shifts for each column/row instead of elementwise calculation
