##LC 1748. Sum of Unique Elements

#Solution
from collections import Counter

class Solution(object):
    def sumOfUnique(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        Ct = Counter(nums)
        
        return sum(n*(Ct[n]==1) for n in Ct)
                
#Result Runtime: 24 ms / 66.78%; Memory Usage: 13.4 MB / 44.32%

#Instruction: use counter or dictionary
