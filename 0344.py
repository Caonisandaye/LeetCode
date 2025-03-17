##LC 344. Reverse String

#Solution
class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """
        p1, p2 = 0, len(s) - 1
        while p1 < p2:
            s[p1], s[p2] = s[p2], s[p1]
            p1 += 1
            p2 -= 1
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 23.01 MB / 41.99%

#Instruction: Very beautiful two point in-place swapping solution
