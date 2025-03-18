##LC 232. Implement Queue using Stacks

#Solution
class MyQueue:

    def __init__(self):
        self.stack1 = []
        self.stack2 = []

    def push(self, x: int) -> None:
        self.stack2.append(x)

    def pop(self) -> int:
        if not self.stack1:
            while self.stack2:
                self.stack1.append(self.stack2.pop())
        return self.stack1.pop()

    def peek(self) -> int:
        if not self.stack1:
            while self.stack2:
                self.stack1.append(self.stack2.pop())
        return self.stack1[-1]

    def empty(self) -> bool:
        return not self.stack1 and not self.stack2

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.93 MB / 39.40%

#Instruction: Great solution to use two stack to implement a queue, since FILO + FILO = FIFO.
