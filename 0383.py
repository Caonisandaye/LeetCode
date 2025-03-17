##LC 383. Ransom Note

#Solution
class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        cnt_m = {}
        for char_m in magazine:
            cnt_m[char_m] = cnt_m.get(char_m, 0) + 1
        for char_r in ransomNote:
            cnt_m[char_r] = cnt_m.get(char_r, 0) - 1
            if cnt_m[char_r] == -1:
                return False
        return True
                
#Result Runtime: 19 ms / 59.66%; Memory Usage: 17.65 MB / 54.56%

#Instruction: Classic counter comparison solution.
