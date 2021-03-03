##LC 1742. Maximum Number of Balls in a Box

#Solution
class Solution(object):
    def countBalls(self, lowLimit, highLimit):
        """
        :type lowLimit: int
        :type highLimit: int
        :rtype: int
        """
        bitMap = {}
        sumBit = [0]*46
        
        for n in range(highLimit+1):
            if n < 10:
                bitMap[n] = n
            else:
                bitMap[n] = bitMap[n/10] + n%10
            if n >= lowLimit:
                sumBit[bitMap[n]] += 1
        
        return max(sumBit)
                
#Result Runtime: 316 ms / 97.64%; Memory Usage: 26.6 MB / 5.30%

#Instruction: use dp to save runtime, in sacrifice of space
