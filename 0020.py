##LC 20. Valid Parentheses

#Solution
class Solution:
    def isValid(self, s: str) -> bool:
        pair = {")": "(", "]": "[", "}": "{"}
        lefts = []
        for br in s:
            if br in ["(", "[", "{"]:
                lefts.append(br)
            elif not lefts or lefts.pop() != pair[br]:
                return False
        return not lefts
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.80 MB / 15.47%

#Instruction: Use stack to save run time.
