##LC 1313. Decompress Run-Length Encoded List

class Solution(object):
    def decompressRLElist(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        output = []
        
        for i in range(0, len(nums), 2):
            output += [nums[i+1]] * nums[i]
        
        return output

#Result Runtime: 56 ms / 59.88%; Memory Usage: 13.6 MB / 96.10%

#Instruction: Simple for loop.
