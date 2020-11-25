##LC 1108. Defanging an IP Address

#Solution
class Solution(object):
    def defangIPaddr(self, address):
        """
        :type address: str
        :rtype: str
        """
        return '[.]'.join(address.split('.'))
        
#Result Runtime: 16 ms / 70.53%; Memory Usage: 13.3 MB / 87.69%

#Instruction: Implement .join() and .split()
