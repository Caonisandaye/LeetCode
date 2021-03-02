##LC 0. py file template

#Solution
from collections import Counter

class Solution(object):
    def canBeEqual(self, target, arr):
        """
        :type target: List[int]
        :type arr: List[int]
        :rtype: bool
        """
        return Counter(target) == Counter(arr)
                
#Result Runtime: 64 ms / 66.15%; Memory Usage: 13.8 MB / 34.43%

#Instruction: simple math induction shows same combination means reversible
