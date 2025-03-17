##LC 326. Power of Three

#Solution
class Solution:
    def isPowerOfThree(self, n: int) -> bool:
        if n <= 0:
            return False
        while n > 1 and n % 3 == 0:
            n //= 3
        return n == 1
                
#Result Runtime: 3 ms / 93.11%; Memory Usage: 17.6 MB / 99.25%

#Instruction: Not sure why we have 3 "power of n" problem.
