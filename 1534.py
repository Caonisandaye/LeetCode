##LC 1534. Count Good Triplets

#Solution
class Solution(object):
    def countGoodTriplets(self, arr, a, b, c):
        """
        :type arr: List[int]
        :type a: int
        :type b: int
        :type c: int
        :rtype: int
        """
        L = len(arr)
        tri = 0
        
        for i in range(L):
            for j in range(i+1, L):
                for k in range(j+1, L):
                    if abs(arr[i]-arr[j]) <= a and abs(arr[j]-arr[k]) <= b and abs(arr[i]-arr[k]) <= c:
                        tri += 1
        
        return tri
                
#Result Runtime: 552 ms / 60.76%; Memory Usage: 13.4 MB / 64.45%

#Instruction: brute force, didn't find a better way
