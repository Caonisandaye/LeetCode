##LC 278. First Bad Version

# The isBadVersion API is already defined for you.
# def isBadVersion(version: int) -> bool:

#Solution
class Solution:
    def firstBadVersion(self, n: int) -> int:
        l, r = 1, n
        while l < r:
            m = min((l + r)//2, r)
            if isBadVersion(m):
                r = m
            else:
                l = m + 1
        return l
                
#Result Runtime: 36 ms / 67.94%; Memory Usage: 17.62 MB / 68.20%

#Instruction: classic binary search, not that you can at least move the lower bond to mid + 1 if the current version is not bad (to avoid infinite loop).
