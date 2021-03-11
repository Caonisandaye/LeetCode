##LC 1207. Unique Number of Occurrences

#Solution
from collections import Counter

class Solution(object):
    def uniqueOccurrences(self, arr):
        """
        :type arr: List[int]
        :rtype: bool
        """
        counter = Counter(arr)
        Ct = [counter[n] for n in counter]
        
        return len(set(Ct)) == len(Ct) 
                
#Result Runtime: 20 ms / 87.88%; Memory Usage: 13.5 MB / 50.69%

#Instruction: utilize Counter()
