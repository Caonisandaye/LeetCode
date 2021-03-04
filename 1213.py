##LC 1213. Intersection of Three Sorted Arrays

#Solution
class Solution(object):
    def arraysIntersection(self, arr1, arr2, arr3):
        """
        :type arr1: List[int]
        :type arr2: List[int]
        :type arr3: List[int]
        :rtype: List[int]
        """
        read1 = read2 = read3 = 0
        ints = []
        
        while read1 < len(arr1) and read2 < len(arr2) and read3 < len(arr3):
            if arr1[read1] == arr2[read2] and arr1[read1] == arr3[read3]:
                ints.append(arr1[read1])
            minm = min(arr1[read1], arr2[read2], arr3[read3])
            read1 += (arr1[read1] == minm)
            read2 += (arr2[read2] == minm)
            read3 += (arr3[read3] == minm)

        return ints
                
#Result Runtime: 60 ms / 89.19%; Memory Usage: 13.6 MB / 76.58%

#Instruction: since the arrays are sorted, we just need to compare the smallest of each array without looking back, note that 'a==b==c' is different with '(a==b)==c'.
