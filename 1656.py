##LC 1656. Design an Ordered Stream

#Solution
class OrderedStream(object):

    def __init__(self, n):
        """
        :type n: int
        """
        self.cur = 1
        self.record = [''] * (n + 2)

    def insert(self, idKey, value):
        """
        :type idKey: int
        :type value: str
        :rtype: List[str]
        """
        output = []
        self.record[idKey] = value
        
        while self.record[self.cur] :
            output.append(self.record[self.cur])
            self.cur += 1
        
        return output
        
# Your OrderedStream object will be instantiated and called as such:
# obj = OrderedStream(n)
# param_1 = obj.insert(idKey,value)
                
#Result Runtime: 196 ms / 74.34%; Memory Usage: 14 MB / 87.61%

#Instruction: use a reader and a recorder to track the list of strings
