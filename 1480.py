##LC 1480. Running Sum of 1d Array

#Solution
class Solution(object):
    def runningSum(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        running_sums = []
        cur_sum = 0
        
        for n in nums:
            cur_sum += n
            running_sums.append(cur_sum)
        
        return running_sums
        
#Result Runtime: 16 ms / 99.67%; Memory: 13.7 MB / 38.07% 

#Instruction: Just do not calculate the sums all over again each time.
