##LC 342. Power of Four

#Solution1
class Solution:
    def isPowerOfFour(self, n: int) -> bool:
        if n <= 0:
            return False
        while n > 1 and n % 4 == 0:
            n //= 4
        return n == 1

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.54 MB / 98.17%

#Solution2
class Solution:
    def isPowerOfFour(self, n: int) -> bool:
        if n <= 0:
            return False
        while n > 1 and not n & 3:
            n >>= 2
        return n == 1
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.56 MB / 98.17%

#Instruction: Bit operation solution looks more advanced, tho it is only applicable to power of 2^n
