##LC 1619. Mean of Array After Removing Some Elements

#Solution
class Solution(object):
    def trimMean(self, arr):
        """
        :type arr: List[int]
        :rtype: float
        """
        L = len(arr)

        return sum(sorted(arr)[L/20: L-L/20])/float(L-(L/20)*2)
                
#Result Runtime: 36 ms / 92.70%; Memory Usage: 13.7 MB / 22.63%

#Instruction: list indexing
