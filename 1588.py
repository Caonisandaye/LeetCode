##LC 1588. Sum of All Odd Length Subarrays

#Solution
class Solution(object):
    def sumOddLengthSubarrays(self, arr):
        """
        :type arr: List[int]
        :rtype: int
        """
        L = len(arr)
        ans = 0
        
        for j in range(L):
            left_odd = (j+1)/2
            left_even = j/2 + 1
            right_odd = (L-j+1)/2
            right_even = (L-j)/2
            ans += (left_odd*right_even+right_odd*left_even)*arr[j]
        
        return ans
                
#Result Runtime: 24 ms / 94.48%; Memory Usage: 13.5 MB / 45.26%

#Instruction: not easy to figure out best solution, dont make it too hard by caculating the number of repeats for each index, try to use start/end method.
