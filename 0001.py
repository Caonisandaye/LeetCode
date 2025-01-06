## LC 1. Two Sum

# Soution 1
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        L = len(nums)

        dic = {nums[i]: i for i in range(L)}
        for i in range(L):
            if target - nums[i] in dic and dic[target - nums[i]] != i:
                return [i, dic[target - nums[i]]]

# Result Runtime: 3 ms / 52.82%; Memory Usage: 18.94 MB / 12.00%

# Soution 2               
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        seen = {}
        for i, n in enumerate(nums):
            try:
                return [seen[target - n], i]
            except KeyError:
                seen[n] = i

# Result Runtime: 1 ms / 61.09%; Memory Usage: 19.06 MB / 8.68%


# Instruction: Use dictionary to solve in O(N). And try to avoid loop through the `nums` twice
