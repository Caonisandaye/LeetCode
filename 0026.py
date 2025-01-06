##LC 26. Remove Duplicates from Sorted Array

#Solution
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        lst = 0
        for i, n in enumerate(nums[1:], 1):
            if n != nums[lst]:
                lst += 1
                nums[lst] = n
        lst += 1
        nums[lst:] = ["_"] * (len(nums) - lst)
        return lst
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 19.16 MB / 10.38%

#Instruction: Keep checking current number against last seen non-duplicate number and replace in-place to avoid a second pass
