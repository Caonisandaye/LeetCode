##LC 1275. Find Winner on a Tic Tac Toe Game

#Solution
class Solution(object):
    def tictactoe(self, moves):
        """
        :type moves: List[List[int]]
        :rtype: str
        """
        plate = [[''] * 3 for i in range(3)]
        plate[1][1] = 'T'
        
        for i in range(len(moves)):
            if i%2 == 0:
                plate[moves[i][0]][moves[i][1]] = 'X'
            else:
                plate[moves[i][0]][moves[i][1]] = 'O'
            if plate[moves[i][0]][0] == plate[moves[i][0]][1] == plate[moves[i][0]][2]:
                break
            if plate[0][moves[i][1]] == plate[1][moves[i][1]] == plate[2][moves[i][1]]:
                break
            if plate[0][0] == plate[1][1] == plate[2][2]:
                break
            if plate[0][2] == plate[1][1] == plate[2][0]:
                break
        else:
            return 'Pending' if i<8 else 'Draw'
        
        return 'A' if i%2 == 0 else 'B'
                
#Result Runtime: 16 ms / 92.54%; Memory Usage: 13.4 MB / 42.54%

#Instruction: algorithm is nothing hard, make the code more simple is the key
