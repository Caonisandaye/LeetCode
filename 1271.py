##LC 1271. Hexspeaky file template

#Solution
class Solution(object):
    def toHexspeak(self, num):
        """
        :type num: str
        :rtype: str
        """
        num = int(num)
        dic = ["O", "I"]+[""]*8+["A", "B", "C", "D", "E", "F"]
        output = ""
        
        while num:
            if not dic[num%16]:
                return "ERROR"
            output = dic[num%16] + output
            num /= 16
        
        return output
                
#Result Runtime: 12 ms / 96.88%; Memory Usage: 13.6 MB / 50.00%

#Instruction: another hex/decimal conversion, have to use built-in string integer conversion function
