##LC 35. Search Insert Position

#Solution
class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        l, r = 0, len(nums)
        while l < r:
            m = min((l + r) // 2, r - 1)
            if target <= nums[m]:
                r = m
            else:
                l = m + 1
        return l
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 18.39 MB / 73.72%

#Instruction: classic binary search problem, be aware to at least reduce right pointer by 1 every round to avoid infinite loop. Also based on the inserting criteria, need to split case into less equal to / greater than, and update right / left pointer by mid pointer / mid pointer + 1 accordingly in each case.
