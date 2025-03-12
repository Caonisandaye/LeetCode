##LC 28. Find the Index of the First Occurrence in a String

#Solution
class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        l_n = len(needle)
        lps = [0 for _ in range(l_n)]
        i, j = 0, 1
        while j < l_n:
            if needle[i] == needle[j]:
                i += 1
                lps[j] = i
                j += 1
            elif i > 0:
                i = lps[i - 1]
            else:
                lps[j] = i
                j += 1
        k, l = 0, 0
        while l < len(haystack):
            if needle[k] == haystack[l]:
                k += 1
                l += 1
                if k == l_n:
                    return l - l_n
            elif k > 0:
                k = lps[k-1]
            else:
                l += 1
        return -1
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.88 MB / 33.17%

#Instruction: classic KMP, keep practicing it!
