##LC 303. Range Sum Query - Immutable

#Solution
class NumArray:

    def __init__(self, nums: List[int]):
        self.pfx_sum = [0]
        for n in nums:
            self.pfx_sum.append(n + self.pfx_sum[-1])

    def sumRange(self, left: int, right: int) -> int:
        return self.pfx_sum[right + 1] - self.pfx_sum[left]


# Your NumArray object will be instantiated and called as such:
# obj = NumArray(nums)
# param_1 = obj.sumRange(left,right)

#Result Runtime: 4 ms / 62.51%; Memory Usage: 21.85 MB / 27.13%

#Instruction: Record the prefix sums to make sure range sum calculation runs with O(1) time.
