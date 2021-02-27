##LC 1720. Decode XORed Array

#Solution
class Solution(object):
    def decode(self, encoded, first):
        """
        :type encoded: List[int]
        :type first: int
        :rtype: List[int]
        """
        output = [first]
        
        for e in encoded:
            output.append(output[-1] ^ e)
        
        return output
    
#Result Runtime: 196 ms / 83.75%; Memory Usage: 15 MB / 97.22%

#Instruction: A XOR B XOR B = A
