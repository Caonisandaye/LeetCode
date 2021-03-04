##LC 1370. Increasing Decreasing String

#Solution
class Solution(object):
    def sortString(self, s):
        """
        :type s: str
        :rtype: str
        """
        counter = [0]*26        
        for char in s:
            counter[ord(char)-ord('a')] += 1
            
        drct = 1
        read = 0
        output = []
        while len(output) < len(s):
            while read >= 0 and read < 26 and counter[read] == 0:
                read += drct
            if read >= 0 and read < 26:
                output.append(read)
                counter[read] -= 1
                read += drct
            else:
                read -= drct
                drct *= -1
        
        return ''.join(chr(o+ord('a')) for o in output)
                
#Result Runtime: 72 ms / 71.25%; Memory Usage: 13.5 MB / 95.14%

#Instruction: it's an O(N) best solution, but not sure if I can make code easier
