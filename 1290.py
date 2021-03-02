##LC 1290. Convert Binary Number in a Linked List to Integer

#Solution
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def getDecimalValue(self, head):
        """
        :type head: ListNode
        :rtype: int
        """
        dec = 0
        node = head
        
        while node:
            dec = 2 * dec + node.val
            node = node.next
        
        return dec
                
#Result Runtime: 20 ms / 57.35%; Memory Usage: 13.2 MB / 91.28%

#Instruction: simple binary-decimal conversion
