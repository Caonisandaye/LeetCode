##58. Length of Last Word

#Solution1
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        lst_spc = -1
        for i, char in enumerate(s + " "):
            if char == " ":
                lst_spc = i
            else:
                len_lst_w = i - lst_spc
        return len_lst_w
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.71 MB / 60.69%

#Solution2
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        len_lst_w, len_cur_w = 0, 0
        for i, char in enumerate(s + " "):
            if char == " ":
                if len_cur_w > 0:
                    len_lst_w, len_cur_w = len_cur_w, 0
            else:
                len_cur_w += 1
        return len_cur_w + len_lst_w * (len_cur_w == 0)
      
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.72 MB / 60.69%

#Instruction: There are more than one one-pass solution for this. Don't use str.split(), that is lame.
