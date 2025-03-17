##LC 345. Reverse Vowels of a String

#Solution
class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = set(["a", "e", "i", "o", "u"])
        list_s = list(s)
        p1, p2 = 0, len(s) - 1
        while p1 < p2:
            if s[p1].lower() not in vowels:
                p1 += 1
            elif s[p2].lower() not in vowels:
                p2 -= 1
            else:
                list_s[p1], list_s[p2] = s[p2], s[p1]
                p1 += 1
                p2 -= 1
        return "".join(list_s)

#Result Runtime: 14 ms / 46.69%; Memory Usage: 18.72 MB / 31.35%

#Instruction: Very elegant two point solution, not sure why runtime is bad, so about how to check vowel without hardcoding.
