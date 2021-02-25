##LC 1365. How Many Numbers Are Smaller Than the Current Number

class Solution(object):
    def smallerNumbersThanCurrent(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        ct = [0 for i in range(101)]
        
        for n in nums:
            ct[n] += 1
        for i in range(1, 101):
            ct[i] += ct[i-1]
        
        ct = [0] + ct
        
        return [ct[n] for n in nums]
        
#Result Runtime: 44 ms / 83.42%; Memory Usage: 13.4 MB / 90.91%

#Instruction: Index retrival
