##LC 1337. The K Weakest Rows in a Matrix

#Solution
class Solution(object):
    def kWeakestRows(self, mat, k):
        """
        :type mat: List[List[int]]
        :type k: int
        :rtype: List[int]
        """
        weakness = []
        
        for i in range(len(mat)):
            stand = 0
            while stand < len(mat[i]) and mat[i][stand] == 1:
                stand += 1
            weakness.append((stand, i))
        
        return [w[1] for w in sorted(weakness)[:k]]
                
#Result Runtime: 88 ms / 69.14%; Memory Usage: 13.7 MB / 78.40%

#Instruction: sort tuples
