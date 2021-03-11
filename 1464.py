##LC 1464. Maximum Product of Two Elements in an Array

#Solution
class Solution(object):
    def maxProduct(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        if len(nums) == 2:
            return (nums[0]-1)*(nums[1]-1)
        
        pos = neg = [0, 0]
        for n in nums:
            if n-1 > pos[0]:
                pos = [n-1, pos[0]]
            elif n-1 > pos[1]:
                pos[1] = n-1
            elif n-1 < neg[0]:
                neg = [n-1, neg[0]]
            elif n-1 < neg[1]:
                neg[1] = n-1
        
        return max(pos[0]*pos[1], neg[0]*neg[1])
                
#Result Runtime: 32 ms / 86.47%; Memory Usage: 13.4 MB / 86.72%

#Instruction: keep recording the top2 positive and negative numbers thus we can avoid sorting
