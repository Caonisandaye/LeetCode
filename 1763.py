##LC 1763. Longest Nice Substring

#Solution
class Solution(object):
    def longestNiceSubstring(self, s):
        """
        :type s: str
        :rtype: str
        """
        maxDistinct = len(set(s.lower()))
        opStart = opEnd = 0
        
        for curDistinct in range(1, maxDistinct+1):
            distinct = 0
            start = end = 0
            freq = [[0, 0] for _ in range(26)]
            
            while end < len(s):
                if distinct <= curDistinct:
                    if s[end] == s[end].lower():
                        freq[ord(s[end])-ord('a')][0] += 1
                    else:
                        freq[ord(s[end])-ord('A')][1] += 1
                    if sum(freq[ord(s[end].lower())-ord('a')]) == 1:
                        distinct += 1
                    end += 1
                else:
                    if s[start] == s[start].lower():
                        freq[ord(s[start])-ord('a')][0] -= 1
                    else:
                        freq[ord(s[start])-ord('A')][1] -= 1
                    if sum(freq[ord(s[start].lower())-ord('a')]) == 0:
                        distinct -= 1
                    start += 1
                if end-start > opEnd-opStart and sum((c==0)==(C==0) for c, C in freq) == 26:
                    opStart, opEnd = start, end
            
        return s[opStart:opEnd]
                
#Result Runtime: 136 ms / 100.00%; Memory Usage: 13.5 MB / 100.00%

#Instruction: for each number limit of distinct characters, use a sliding window either shrink or expand each time 
