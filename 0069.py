##LC 69. Sqrt(x)

#Solution
class Solution:
    def mySqrt(self, x: int) -> int:
        lw_lim, up_lim = 0, x
        while lw_lim < up_lim:
            mid = max((lw_lim + up_lim) // 2, lw_lim + 1)
            if mid**2 == x:
                return mid
            elif mid**2 < x:
                lw_lim = mid
            else:
                up_lim = mid - 1
        return lw_lim
                
#Result Runtime: 6 ms / 30.37%; Memory Usage: 17.59 MB / 96.06%

#Instruction: Classic binary search, runtime is somehow very bad. Note why in every iteration, need to make mid be at least greater than lower limit by 1 (to avoid infinite loop).
