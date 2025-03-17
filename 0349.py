##LC 349. Intersection of Two Arrays

#Solution1
class Solution:
    def intersection(self, nums1: List[int], nums2: List[int]) -> List[int]:
        set_1 = set()
        set_1_and_2 = set()
        for n1 in nums1:
            set_1.add(n1)
        for n2 in nums2:
            if n2 in set_1:
                set_1_and_2.add(n2)
        return list(set_1_and_2)

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.78 MB / 93.04%

#Solution2
class Solution:
    def intersection(self, nums1: List[int], nums2: List[int]) -> List[int]:
        return list(set(nums1).intersection(set(nums2)))
                
#Result Runtime: 1 ms / 40.05%; Memory Usage: 17.76 MB / 93.06%

#Instruction: To be honest I hate those ugly one liner solution.
