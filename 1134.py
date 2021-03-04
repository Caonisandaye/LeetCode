##LC 1134. Armstrong Number

#Solution
class Solution(object):
    def isArmstrong(self, N):
        """
        :type N: int
        :rtype: bool
        """
        dig = []
        n = N
        
        while n:
            dig.append(n%10)
            n /= 10
        
        return sum(d**len(dig) for d in dig) == N
                
#Result Runtime: 12 ms / 94.12%; Memory Usage: 13.3 MB / 87.06%

#Instruction: another integer to digit problem
