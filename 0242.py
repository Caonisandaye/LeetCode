##LC 242. Valid Anagram

#Solution
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        s_hist = {}
        for char in s:
            s_hist[char] = s_hist.get(char, 0) + 1
        for char in t:
            s_hist[char] = s_hist.get(char, 0) - 1
            if s_hist[char] < 0:
                return False
        return True
                
#Result Runtime: 11 ms / 73.23%; Memory Usage: 18.03 MB / 33.56%

#Instruction: Another two way mapping solution, not liking such problem.
