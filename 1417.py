##LC 1417. Reformat The String

#Solution
class Solution(object):
    def reformat(self, s):
        """
        :type s: str
        :rtype: str
        """
        alph = dig = ''
        output = ''
        for char in s:
            if char in '1234567890':
                dig += char
            else:
                alph += char
        
        if len(alph) == len(dig):
            return ''.join([alph[i]+dig[i] for i in range(len(dig))])
        elif len(alph) == len(dig)+1:
            return ''.join([alph[i]+dig[i] for i in range(len(dig))]+[alph[-1]])
        elif len(alph) == len(dig)-1:
            return ''.join([dig[i]+alph[i] for i in range(len(alph))]+[dig[-1]])
        else:
            return ''
                
#Result Runtime: 32 ms / 88.46%; Memory Usage: 13.8 MB / 15.38%

#Instruction: reformable <=> abs(len(digit)-len(alphabet))=1, should have a one pass solution, but too lazy to do it
