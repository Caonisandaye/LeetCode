  
##LC 1708. Largest Subarray Length K

#Solution
class Solution(object):
    def largestSubarray(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: List[int]
        """
        maxN, maxI = 0, -1
        
        for i in range(len(nums)-k+1):
            if nums[i] > maxN:
                maxN, maxI = nums[i], i
        
        return nums[maxI:maxI+k]
                
#Result Runtime: 632 ms / 69.03%; Memory Usage: 23.8 MB / 93.81%

#Instruction: the uniqueness and continuity makes problem easier, just find the largest in first L-k+1 numbers
