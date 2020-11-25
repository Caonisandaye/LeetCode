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
        
#Result Runtime: 28 ms/52.56% Memory Usage: 13.4 MB

#Instruction: Just do not calculate the sums all over again each time.
