##LC 0. Palindrome Number

#Solution
class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False
        digits = []
        while x:
            x, d = divmod(x, 10)
            digits.append(d)
        for i in range(len(digits) // 2):
            if digits[i] != digits[-i - 1]:
                return False
        return True
                
#Result Runtime: 19 ms / 9.67%; Memory Usage: 17.89 MB / 12.26%

#Instruction: Use divmod to construct a digit list instead of converting th integer into a string, which may sacrifice some time complexity.
