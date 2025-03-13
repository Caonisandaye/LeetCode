##LC 67. Add Binary

#Solution
class Solution:
    def addBinary(self, a: str, b: str) -> str:
        p_a, p_b, bit_carry, ans = len(a) - 1, len(b) - 1, 0, ""
        while p_a >= 0 or p_b >= 0 or bit_carry:
            bit_a = int(a[p_a]) if p_a >= 0 else 0
            bit_b = int(b[p_b]) if p_b >= 0 else 0
            bit_carry, bit_cur = divmod(bit_a + bit_b + bit_carry, 2)
            ans += str(bit_cur)
            p_a -= 1
            p_b -= 1
        return ans[::-1]
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 18.02 MB / 12.99%

#Instruction: Imitate the binary calculation, don't built-in binary number conversion, that's lame. Had to use built-in int/str conversion, or the solution will be too cumbersome.
