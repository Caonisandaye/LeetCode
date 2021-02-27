##LC 18. 4Sum

#Solution
class Solution(object):
    def twoSum(self, nums, target):
        ans = []
        
        if target % 2 == 0 and nums.count(target/2) >= 2:
            ans.append([target/2, target/2])
        
        num_set = set(nums)
        for n in nums:
            if 2 * n < target and (target-n) in num_set:
                ans.append([n, target-n])
        
        return ans
        
    def fourSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[List[int]]
        """
        ans = set()
        
        for i in range(len(nums)-3):
            for j in range(i+1, len(nums)-2):
                for duo in self.twoSum(nums[j+1:], target - nums[i] - nums[j]):
                    ans.add(tuple(sorted((nums[i], nums[j], duo[0], duo[1]))))
        return ans
    
#Result Runtime: 656 ms / 66.38%; Memory Usage: 13.5 MB / 33.30%

#Instruction: Solve two sum in O(N) with a set(), then you solve all n sum questions.
