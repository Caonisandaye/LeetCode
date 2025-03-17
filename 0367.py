##LC 367. Valid Perfect Square

#Solution
class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        l, r = 1, num
        while l < r:
            m = (l + r + 1) // 2
            if m**2 == num:
                return True
            elif m**2 <= num:
                l = m
            else:
                r = m - 1
        return l**2 == num
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.82 MB / 32.27%

#Instruction: Classic binary search solution, in every iteration, make mid at least greater than lower by 1 to avoid infinite loop.
