##LC 1672. Richest Customer Wealth

#Solution
class Solution(object):
    def maximumWealth(self, accounts):
        """
        :type accounts: List[List[int]]
        :rtype: int
        """
        return max([sum(accounts[i]) for i in range(len(accounts))])
        
#Result Runtime: 32 ms / 96.61%; Memory Usage: 13.6 MB / 22.25%

#Instruction: Implement max() and list by simple for loop
