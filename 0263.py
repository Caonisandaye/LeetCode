##LC 263. Ugly Number

#Solution
class Solution:
    def isUgly(self, n: int) -> bool:
        if n <= 0:
            return False
        for pf in [2, 3, 5]:
            while n % pf == 0:
                n //= pf
        return n == 1
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.9 MB / 25.27%

#Instruction: Again, I hate hardcoding no matter what.
