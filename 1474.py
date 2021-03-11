##LC 1474. Delete N Nodes After M Nodes of a Linked List

#Solution
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def deleteNodes(self, head, m, n):
        """
        :type head: ListNode
        :type m: int
        :type n: int
        :rtype: ListNode
        """
        node = head
        
        while node:
            for i in range(m-1):
                if node:
                    node = node.next
                else:
                    return head
            for i in range(n):
                if node and node.next:
                    node.next = node.next.next
                else:
                    return head
            node = node.next
        
        return head
                
#Result Runtime: 60 ms / 83.54%; Memory Usage: 17.7 MB / 65.82%

#Instruction: single pointer traverse, but be very careful to check the existence of next node
