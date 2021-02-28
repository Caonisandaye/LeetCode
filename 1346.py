##LC 1346. Check If N and Its Double Exist

#Solution
class Solution(object):
    def checkIfExist(self, arr):
        """
        :type arr: List[int]
        :rtype: bool
        """
        num_set = set()
        
        for n in arr:
            if n%2 == 0 and n/2 in num_set or n*2 in num_set:
                return True
            num_set.add(n)
        
        return False
                
#Result Runtime: 36 ms / 81.92%; Memory Usage: 13.5 MB / 37.71%

#Instruction: one pass check and insert to set.
