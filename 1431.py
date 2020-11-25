##LC 1431. Kids With the Greatest Number of Candies

#Solution
class Solution(object):
    def kidsWithCandies(self, candies, extraCandies):
        """
        :type candies: List[int]
        :type extraCandies: int
        :rtype: List[bool]
        """
        grt_candies = max(candies)
        
        return [(cndy + extraCandies) >= grt_candies for cndy in candies]

#Result Runtime: 20 ms / 91.69%; Memory Usage: 13.3 MB / 69.89%

#Instruction: Simple for loop.
