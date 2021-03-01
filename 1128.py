##LC 1128. Number of Equivalent Domino Pairs

#Solution
class Solution(object):
    def numEquivDominoPairs(self, dominoes):
        """
        :type dominoes: List[List[int]]
        :rtype: int
        """
        domMap = [0] * 100
        
        for d in dominoes:
            domMap[min(d)*10+max(d)] += 1

        return sum(n*(n-1)/2 for n in domMap)
                
#Result Runtime: 184 ms / 98.56%; Memory Usage: 25.5 MB / 18.71%

#Instruction: how to calculate pairs when you have an accumulation result.
