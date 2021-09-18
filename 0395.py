##LC 395. Longest Substring with At Least K Repeating Characters

#Solution
class Solution(object):
    def longestSubstring(self, s, k):
        """
        :type s: str
        :type k: int
        :rtype: int
        """
        maxDistinct = len(set(s))
        output = 0
        
        for curDistinct in range(1, maxDistinct+1):
            distinct, start, end, krep = 0, 0, 0, 0
            freq = [0]*26
            
            while end < len(s):
                if distinct <= curDistinct:
                    idx = ord(s[end])-ord('a')
                    if freq[idx] == 0:
                        distinct += 1
                    if freq[idx] == k-1:
                        krep += 1
                    freq[idx] += 1
                    end += 1
                else:
                    idx = ord(s[start])-ord('a')
                    if freq[idx] == 1:
                        distinct -= 1
                    if freq[idx] == k:
                        krep -= 1
                    freq[idx] -= 1
                    start += 1
                if distinct == curDistinct == krep:
                    output = max(output, end-start)
        return output
                
#Result Runtime: 104 ms / 30.34% Memory Usage: 13.5 MB / 85.67%

#Instruction: sliding window metod similar to 1763, it's the optimal solution while actuall runtime freakingly bad
