##LC 1403. Minimum Subsequence in Non-Increasing Order

#Solution
class Solution(object):
    def minSubsequence(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        nums.sort()
        S = sum(nums)
        curSum = 0
        output = []
        
        while curSum*2 <= S:
            output.append(nums.pop())
            curSum += output[-1]
        
        return output
                
#Result Runtime: 40 ms / 95.57%; Memory Usage: 13.4 MB / 62.03%

#Instruction: actually you just need to keep adding largest from rest until partial sum greater than half
