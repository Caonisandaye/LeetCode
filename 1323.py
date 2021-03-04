##LC 1323. Maximum 69 Number

#Solution
class Solution(object):
    def maximum69Number (self, num):
        """
        :type num: int
        :rtype: int
        """
        bit = -1
        N = num
        maxBit = -1
        
        while N:
            bit += 1
            if N%10 == 6:
                maxBit = bit
            N /= 10
        
        return num+(3*10**maxBit if maxBit >= 0 else 0)
                
#Result Runtime: 12 ms / 95.93%; Memory Usage: 13.5 MB / 13.65%

#Instruction: Again, I avoid using built-in conversion as much as I can
