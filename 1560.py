##LC 1560. Most Visited Sector in a Circular Track

#Solution
class Solution(object):
    def mostVisited(self, n, rounds):
        """
        :type n: int
        :type rounds: List[int]
        :rtype: List[int]
        """
        if rounds[0] <= rounds[-1]:
            return range(rounds[0], rounds[-1]+1)
        else:
            return range(1, rounds[-1]+1) + range(rounds[0], n+1)
                
#Result Runtime: 20 ms / 96.00%; Memory Usage: 13.6 MB / 24.00%

#Instruction: only the starting and ending points matter, then we have an O(1) solution (output still takes O(N))
