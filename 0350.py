##LC 350. Intersection of Two Arrays II

#Solution
class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        res, cnt_1 = [], {}
        for n1 in nums1:
            cnt_1[n1] = cnt_1.get(n1, 0) + 1
        for n2 in nums2:
            if n2 in cnt_1 and cnt_1[n2] > 0:
                cnt_1[n2] -= 1
                res.append(n2)
        return res
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.88 MB / 74.20%

#Instruction: Classic counter solution, no need to explain
