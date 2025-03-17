##LC 392. Is Subsequence

#Solution1
class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        p1, p2 = 0, 0
        while p1 < len(s):
            if p2 == len(t):
                return False
            if s[p1] == t[p2]:
                p1 += 1
            p2 += 1
        return True

#Result Runtime: 0 ms / 100.00%; Memory Usage: 18.02 MB / 5.49%

#Solution2
class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        p = 0
        for i, char in enumerate(s):
            if p == len(t):
                return False
            while p < len(t) and t[p] != char:
                p += 1
            if p == len(t):
                return False
            p += 1
        return True
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.86 MB / 42.93%

#Instruction: The second solution is so ugly, I like the two pointer solution better.
