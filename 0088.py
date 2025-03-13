##LC 88. Merge Sorted Array

#Solution1
class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        p1, p2 = m - 1, n - 1
        while p1 >= 0 or p2 >= 0:
            n1 = nums1[p1] if p1 >= 0 else -1e9 - 1
            n2 = nums2[p2] if p2 >= 0 else -1e9 - 1
            nums1[p1 + p2 + 1] = max(n1, n2)
            if n1 >= n2:
                p1 -= 1
            else:
                p2 -= 1
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.79 MB / 71.84%

#Solution2
class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        p1, p2 = m - 1, n - 1
        while p1 >= 0 and p2 >= 0:
            nums1[p1 + p2 + 1] = max(nums1[p1], nums2[p2])
            if nums1[p1] >= nums2[p2]:
                p1 -= 1
            else:
                p2 -= 1
        for i, n in enumerate(nums2[: p2 + 1]):
            nums1[i] = n

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.90 MB / 44.13%

#Instruction: Classic two pointer solution, solution 1 makes empty numbers negative infinite in order to avoid go through all number left (if there's any).
