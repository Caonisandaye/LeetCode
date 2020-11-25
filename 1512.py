##LC 1512. Number of Good Pairs

#Solution
class Solution(object):
    def numIdenticalPairs(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        ct = {}
        for n in nums:
            if n in ct:
                ct[n] += 1
            else:
                ct[n] = 1
        
        return sum([ct[n] * (ct[n] - 1) / 2 for n in ct])
        
#Result Runtime: 16 ms / 92.18%; Memory Usage: 13.4 MB / 70.30%

#Instruction: Math 101 -- n identical numbers means n * (n - 1) / 2 good pairs.
