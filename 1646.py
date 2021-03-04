##LC 1646. Get Maximum in Generated Array

#Solution
class Solution(object):
    def getMaximumGenerated(self, n):
        """
        :type n: int
        :rtype: int
        """
        if n == 0:
            return 0

        nums = [0, 1]+[0]*(n-1)
        
        for i in range(2, n+1):
            nums[i] = nums[i/2] if i%2 == 0 else (nums[i/2] + nums[i/2+1])
            
        return max(nums)
                
#Result Runtime: 12 ms / 94.85%; Memory Usage: 13.5 MB / 14.87%

#Instruction: thought I can find a O(1) or O(logN) solution, but failed
