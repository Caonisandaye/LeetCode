##LC 322. Coin Change

#Solution
class Solution(object):
    def coinChange(self, coins, amount):
        """
        :type coins: List[int]
        :type amount: int
        :rtype: int
        """
        min_coins = [0] + [amount+1] * (amount)
        
        for n in range(1, amount+1):
            mc = amount+1
            for c in coins:
                if n-c >= 0:
                    mc = min(mc, min_coins[n-c] + 1)
            min_coins[n] = mc
    
        return -1 if min_coins[amount] > amount else min_coins[amount]
    
#Result Runtime: 1172 ms / 52.09%; Memory Usage: 13.5 MB / 98.61%

#Instruction: Dynamic programming: Min(amount) = Min(Min(amount - coins[i]) for i in range(len(coins)) + 1
