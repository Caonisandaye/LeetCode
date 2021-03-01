##LC 1041. Robot Bounded In Circle

#Solution
class Solution(object):
    def isRobotBounded(self, instructions):
        """
        :type instructions: str
        :rtype: bool
        """
        step = [0, 0, 0, 0]
        dr = 0
        
        for i in instructions:
            if i == 'L':
                dr -= 1
            elif i == 'R':
                dr += 1
            else:
                step[dr%4] += 1

        return dr%4 != 0 or (step[0] == step[2] and step[1] == step[3])
                
#Result Runtime: 12 ms / 95.00%; Memory Usage: 13.8 MB / 10.22%

#Instruction: Repeat four time, or use some math to prove the only way to not fall into loop is having non-zero displacement and same direction after the instructions.
