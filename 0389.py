##LC 389. Find the Difference

#Solution
class Solution:
    def findTheDifference(self, s: str, t: str) -> str:
        cnt_s = {}
        for char_s in s:
            cnt_s[char_s] = cnt_s.get(char_s, 0) + 1
        for char_t in t:
            cnt_s[char_t] = cnt_s.get(char_t, 0) - 1
            if cnt_s[char_t] == -1:
                return char_t
                
#Result Runtime: 3 ms / 52.98%; Memory Usage: 17.8 MB / 43.76%

#Instruction: Classic counter problem, feel like a counter is a little bit overpowered, not sure if there's a more elegant solution.
