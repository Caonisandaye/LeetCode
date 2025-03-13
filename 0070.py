##LC 70. Climbing Stairs

#Solution
class Solution:
    def climbStairs(self, n: int) -> int:
        nway1, nway2 = 1, 1
        for _ in range(1, n):
            nway1, nway2 = nway1 + nway2, nway1
        return nway1
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.84 MB / 30.30%

#Instruction: Classic recurssion: #way(n steps) = #way(n-1 steps) + #way(n-2 steps). Note don't write a recursion function, or will have O(2^n) runtime.
