##LC 1. Two Sum

class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        L = len(nums)
        
        dic = {nums[i]:i for i in range(L)}
        for i in range(L):
            if target-nums[i] in dic and dic[target-nums[i]] != i:
                return [i, dic[target-nums[i]]]
    
#Result Runtime: 36 ms / 50.34%; Memory Usage: 13.5 MB / 26.80%

#Instruction: Use dictionary to solve in O(N).
