##LC 338. Counting Bits

#Solution1
class Solution:
    def countBits(self, n: int) -> List[int]:
        if n == 0:
            return [0]
        n_cnt_b = n - 1
        res = self.countBits(n_cnt_b)
        tail_ones = 0
        while n_cnt_b & 1:
            n_cnt_b >>= 1
            tail_ones += 1
        res.append(res[-1] + 1 - tail_ones)
        return res
                
#Result Runtime: 15 ms / 33.18%; Memory Usage: 32.21 MB / 5.24%

#Solution2
class Solution:
    def countBits(self, n: int) -> List[int]:
        res = []

        def countBitsToN(n: int) -> None:
            if n == 0:
                res.append(n)
                return
            else:
                n -= 1
                countBitsToN(n)
                tail_zeros = 0
                while n & 1:
                    n >>= 1
                    tail_zeros += 1
                res.append(res[-1] + 1 - tail_zeros)

        countBitsToN(n)
        return res

#Result Runtime: 16 ms / 31.23%; Memory Usage: 31.56 MB / 5.24%

#Instruction: Not sure why runtime is so bad, this is O(N) solution even it uses recurssion.
