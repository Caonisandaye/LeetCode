##LC 1165. Single-Row Keyboard

class Solution(object):
    def calculateTime(self, keyboard, word):
        """
        :type keyboard: str
        :type word: str
        :rtype: int
        """
        dic = {keyboard[i]:i for i in range(26)}
        word = keyboard[0] + word
        
        return sum(abs(dic[word[i]] - dic[word[i-1]]) for i in range(1, len(word)))
    
#Result Runtime: 32 ms / 79.50%; Memory Usage: 13.9 MB / 5.00%

#Instruction: abs()
