##LC 1356. Sort Integers by The Number of 1 Bits

#Solution
class Solution(object):
    def sortByBits(self, arr):
        """
        :type arr: List[int]
        :rtype: List[int]
        """
        bitNum = []
        
        for num in arr:
            bit, n = 0, num
            while n:
                bit += n%2
                n /= 2
            bitNum.append((bit, num))
        
        return [bn[1] for bn in sorted(bitNum)]
                
#Result Runtime: 64 ms / 49.46%; Memory Usage: 13.6 MB / 77.72%

#Instruction: I don't like using bin(), but you can. Check the 'key' paramter for sort(). Keep practicing you will be familiar with bin-dec conversion.
