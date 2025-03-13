##LC 66. Plus One

#Solution
class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        pos, bit = len(digits), 1
        while bit and pos:
            pos -= 1
            if pos >= 0:
                bit, digits[pos] = divmod(digits[pos] + 1, 10)
        return [1] * bit + digits
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.47 MB / 99.61%

#Instruction: Just imitate the calculation algo naively.
