##LC 1299. Replace Elements with Greatest Element on Right Side

#Solution
class Solution(object):
    def replaceElements(self, arr):
        """
        :type arr: List[int]
        :rtype: List[int]
        """
        mx = -1
        
        for i in range(len(arr)-1, -1, -1):
            mx, arr[i] = max(mx, arr[i]), mx
        
        return arr
                
#Result Runtime: 100 ms / 87.74%; Memory Usage: 14.8 MB / 78.78%

#Instruction: loop from back, use double assignment to avoid introducing new variable
