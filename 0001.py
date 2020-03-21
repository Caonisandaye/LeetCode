# 1. Two Sum

# Solution 1: Brute Force
# Loop through all the two number combination is the list to see if it matches the sum
# Time complexity: O(N^2). Space complexity: O(1).

class Solution1(object):
    def twoSum(self, nums, target):
        L = len(nums)
        for i in range(L):
            for j in range(i+1, L):
                if nums[i] + nums[j] == target:
                    return [i, j]

# Solution 2: Hashing
# Keep a hash table to store the number visited
# Loop through the list and check if the residual of target minus current number exists in the list. Record the number if not.
# Remember to output the right sequence.
# Time complexity: O(N). Space complexity: O(N).

class Solution2(object):
    def twoSum(self, nums, target):
        Res = {}
        for i in range(len(nums)):
            if target - nums[i] in Res:
                return [Res[target - nums[i]], i]
            Res[nums[i]] = i
