##LC 268. Missing Number

#Solution1
class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        nums.append(nums[0])
        l = len(nums)
        for n in nums:
            nums[n%l] += l
        for i, n in enumerate(nums):
            if n < l:
                return i
              
#Result Runtime: 7 ms / 39.01%; Memory Usage: 18.74 MB / 52.46%

#Solution2
class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        return (len(nums) + 1) * len(nums) // 2 - sum(nums)
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 18.92 MB / 18.24%

#Instruction: When I come up about the first masking solution I thought I was a genius.
