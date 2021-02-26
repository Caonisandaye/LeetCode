##LC 1678. Goal Parser Interpretation

class Solution(object):
    def interpret(self, command):
        """
        :type command: str
        :rtype: str
        """
        output = ''
        r = 0
        
        while r < len(command):
            if command[r] == 'G':
                output += 'G'
                r += 1
            elif command[r+1] == ')':
                output += 'o'
                r += 2
            else:
                output += 'al'
                r += 4
        
        return output

#Result Runtime: 8 ms / 99.53%; Memory Usage: 13.6 MB / 8.51%

#Instruction: Create a manual reader
