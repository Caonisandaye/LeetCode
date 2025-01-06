##LC 27. Remove Element

#Solution
class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        cur = 0
        for i, n in enumerate(nums):
            if n != val:
                nums[cur] = n
                cur += 1
        nums[cur:] = ["_"] * (len(nums) - cur)
        return cur
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.59 MB / 31.43%

#Instruction: Basically nothing different from LC 26, even easier.
