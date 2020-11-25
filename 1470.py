##LC 1470. Shuffle the Array

#Solution
class Solution(object):
    def shuffle(self, nums, n):
        """
        :type nums: List[int]
        :type n: int
        :rtype: List[int]
        """
        sfld_nums = []
        
        for i in range(n):
            sfld_nums.append(nums[i])
            sfld_nums.append(nums[i + n])
        
        return sfld_nums
        
#Result Runtime: 44 ms / 72.18%; Memory Usage: 13.9 MB / 5.83%

#Instruction: Simple for loop.
