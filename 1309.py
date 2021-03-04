##LC 1309. Decrypt String from Alphabet to Integer Mapping

#Solution
class Solution(object):
    def freqAlphabets(self, s):
        """
        :type s: str
        :rtype: str
        """
        dic = {}
        for i in range(1, 10):
            dic[str(i)] = chr(ord('a')+i-1)
        for i in range(10, 27):
            dic[str(i)+'#'] = chr(ord('a')+i-1)
        
        read = 0
        L = len(s)
        output = ''
        while read < L:
            if read+2 < L and s[read+2] == '#':
                output += dic[s[read:read+3]]
                read += 3
            else:
                output += dic[s[read]]
                read += 1
        
        return output
                
#Result Runtime: 16 ms / 86.61%; Memory Usage: 13.7 MB / 20.87%

#Instruction: build a dictionary and use a one-pass read. chr() and ord() are useful built-in functions
