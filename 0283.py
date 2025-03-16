##LC 283. Move Zeroes

class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        zeros = 0
        for i, n in enumerate(nums):
            if n == 0:
                zeros += 1
            else:
                nums[i], nums[i - zeros] = nums[i - zeros], nums[i]
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 19.06 MB / 9.62%

#Instruction: Keep swapping first 0 and non-0 to make sure finishing the moving one pass and no extra space
