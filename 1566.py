##LC 1566. Detect Pattern of Length M Repeated K or More Times

#Solution
class Solution(object):
    def containsPattern(self, arr, m, k):
        """
        :type arr: List[int]
        :type m: int
        :type k: int
        :rtype: bool
        """
        start = 0
        read = m
        
        while read < len(arr):
            if arr[read] != arr[read-m]:
                start = read-m+1
            elif read-start+1 == m*k:
                return True
            read += 1
        
        return False
                
#Result Runtime: 20 ms / 87.05%; Memory Usage: 13.4 MB / 42.45%

#Instruction: if the reader repeatness comparison fails, do you know where to re-start?
