##LC 374. Guess Number Higher or Lower

# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num: int) -> int:
#Solution
class Solution:
    def guessNumber(self, n: int) -> int:
        l, r = 1, n
        while True:
            m = (l + r) // 2
            guess_m = guess(m)
            if guess_m == 0:
                return m
            elif guess_m == 1:
                l = m + 1
            else:
                r = m - 1

                
#Result Runtime: 26 ms / 98.23%; Memory Usage: 17.89 MB / 29.18%

#Instruction: Classic binary search problem, in this case every iteration has 3 different outcomes, so lower or upper bond will be guaranteed to move by one, less worried about infinite loop then.
