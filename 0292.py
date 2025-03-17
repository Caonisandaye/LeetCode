##LC 292. Nim Game

#Solution
class Solution:
    def canWinNim(self, n: int) -> bool:
        return n % 4 > 0
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.96 MB / 14.45%

#Instruction: Classic game theory problem, backtracking from the base cases to optimize
