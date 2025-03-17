##LC 258. Add Digits

#Solution
class Solution:
    def addDigits(self, num: int) -> int:
        return (num % 9) + 9 * (num % 9 == 0 and num != 0)
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.9 MB / 16.46%

#Instruction: Fun math problem, not that the original always have the same residule moduled by 9 with its digit sum
