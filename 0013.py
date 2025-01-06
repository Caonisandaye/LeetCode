##LC 13. py file template

#Solution
class Solution:
    def romanToInt(self, s: str) -> int:
        romans = {"M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5, "I": 1}
        last, res = 0, 0
        for r in s:
            if romans[r] > last:
                res -= 2 * last
            res += romans[r]
            last = romans[r]
        return res
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.66 MB / 27.72%

#Instruction: Adjust the "to-substract" Roman characters to avoid complex algos.
