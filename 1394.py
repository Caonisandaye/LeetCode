##LC 1394. Find Lucky Integer in an Array

#Solution
from collections import Counter

class Solution(object):
    def findLucky(self, arr):
        """
        :type arr: List[int]
        :rtype: int
        """
        ans = -1
        cnt = Counter(arr)
        
        for n in cnt:
            if n == cnt[n]:
                ans = max(ans, n)
        
        return ans
                
#Result Runtime: 32 ms / 99.12%; Memory Usage: 13.5 MB / 64.76%

#Instruction: collections.Counter()
