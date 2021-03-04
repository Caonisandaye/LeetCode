##LC 1295. Find Numbers with Even Number of Digits

#Solution
class Solution(object):
    def findNumbers(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        even = 0
        
        for n in nums:
            dig = 0
            while n:
                n /= 10
                dig += 1
            even += dig%2 == 0
        
        return even
                
#Result Runtime: 40 ms / 59.09%; Memory Usage: 34 MB / 30.72%

#Instruction: I just dont like the build in alpha-digit conversion functions, bite me!
