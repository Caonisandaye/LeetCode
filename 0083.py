##LC 83. Remove Duplicates from Sorted List

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
#Solution1
class Solution:
    def deleteDuplicates(self, head: Optional[ListNode]) -> Optional[ListNode]:
        last = fake_head = ListNode(101)
        cur = fake_head.next = head
        while cur:
            if last.val == cur.val:
                last.next = cur.next
            else:
                last = last.next
            cur = cur.next
        return fake_head.next

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.63 MB / 91.34%

#Solution2
class Solution:
    def deleteDuplicates(self, head: Optional[ListNode]) -> Optional[ListNode]:
        fake_head = ListNode(101)
        last, cur = fake_head, head
        while cur:
            if last.val != cur.val:
                last.next = ListNode(cur.val)
                last = last.next
            cur = cur.next
        return fake_head.next

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.94 MB / 21.96%

#Instruction: Classic linked list, think about the propagation logic.
