##LC 387. First Unique Character in a String

#Solution1
class Solution:
    def firstUniqChar(self, s: str) -> int:
        uni_chars = set()
        seen = set()
        for i, c in enumerate(s):
            if c not in seen:
                uni_chars.add(c)
                seen.add(c)
            else:
                uni_chars.discard(c)
        for i, c in enumerate(s):
            if c in uni_chars:
                return i
        return -1
                
#Result Runtime: 67 ms / 48.01%; Memory Usage: 18.03 MB / 55.45%

#Solution2
from collections import OrderedDict


class Solution:
    def firstUniqChar(self, s: str) -> int:
        uni_chars = OrderedDict()
        seen = set()
        for i, c in enumerate(s):
            if c not in seen:
                uni_chars[c] = i
                seen.add(c)
            elif c in uni_chars:
                uni_chars.pop(c)
        return -1 if not uni_chars else uni_chars.popitem(last=False)[1]

#Result Runtime: 45 ms / 89.55%; Memory Usage: 17.88 MB / 96.88%

#Instruction: Classic hashing solution, wanna come up with a one-pass elegant solution, seems like not doable without an advanced data structure.
