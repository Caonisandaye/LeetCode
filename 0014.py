##LC 14. Longest Common Prefix

#Solution
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        lcp = strs[0]
        for st in strs[1:]:
            i = 0
            while i < len(lcp) and i < len(st) and lcp[i] == st[i]:
                i += 1
            lcp = lcp[:i]
        return lcp
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 18.00 MB / 9.62%

#Instruction: Avoid string to string comparison to avoid unnecessary calculation, use character to character comparison instead.
