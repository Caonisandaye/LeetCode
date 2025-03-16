##LC 290. Word Pattern

#Solution
class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        p_to_s, s_to_p = {}, {}
        if len(pattern) != len(s.split()):
            return False
        for c, w in zip(pattern, s.split()):
            p_to_s[c] = p_to_s.get(c, w)
            s_to_p[w] = s_to_p.get(w, c)
            if p_to_s[c] != w or s_to_p[w] != c:
                return False
        return True
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.66 MB / 87.14%

#Instruction: Another two way mapping solution, no fun.
