##LC 231. Power of Two

#Solution1
class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        if n <= 0:
            return False
        while n > 1 and n % 2 == 0:
            n //= 2
        return n == 1

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.89 MB / 36.08%

#Solution2
class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        if n <= 0:
            return False
        while n > 1 and n & 1 == 0:
            n >>= 1
        return n == 1
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.86 MB / 36.08%

#Instruction: Stop the dumb power of x problems, too easy.
