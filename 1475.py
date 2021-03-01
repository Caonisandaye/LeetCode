##LC 1475. Final Prices With a Special Discount in a Shop

#Solution
class Solution(object):
    def finalPrices(self, prices):
        """
        :type prices: List[int]
        :rtype: List[int]
        """
        priceStack = []
        output = []
        
        for p in prices[::-1]:
            while priceStack and priceStack[-1] > p:
                priceStack.pop()
            if priceStack:
                output.append(p-priceStack[-1])
            else:
                output.append(p)
            priceStack.append(p)
            
        return output[::-1]
                
#Result Runtime: 36 ms / 91.15%; Memory Usage: 13.5 MB / 75.89%

#Instruction: use a stack to record price backwards, if stack top is greater than current price, then it's useless(will never be a discount for front prices), pop it, 
#otherwise, take the discount price and push current price on the top.
