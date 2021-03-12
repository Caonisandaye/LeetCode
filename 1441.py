##LC 1441. Build an Array With Stack Operations

#Solution
class Solution(object):
    def buildArray(self, target, n):
        """
        :type target: List[int]
        :type n: int
        :rtype: List[str]
        """
        op = []
        read = 0
        inpt = 1
        
        while read < len(target):
            if target[read] > inpt:
                op += ['Push', 'Pop']*(target[read]-inpt)
                inpt = target[read]
            else:
                op.append('Push')
                inpt += 1
                read += 1
        
        return op
                
#Result Runtime: 16 ms / 92.50%; Memory Usage: 13.3 MB / 69.21%

#Instruction: actually we dont really need the input n here, every time see a 'gap' just add the push+pop combo accordingly
