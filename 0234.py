##LC 234. Palindrome Linked List

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
#Solution
class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:
        fast, slow = head, head
        while fast.next:
            if fast.next.next:
                fast = fast.next.next
            else:
                fast = fast.next
            slow = slow.next
        tail = None
        while slow:
            next_slow, slow.next, tail = slow.next, tail, slow
            slow = next_slow
        while tail:
            if head.val != tail.val:
                return False
            head, tail = head.next, tail.next
        return True
                
#Result Runtime: 38 ms / 34.59%; Memory Usage: 34.73 MB / 83.33%

#Instruction: Very elegant O(N) runtime and O(1) space solution, use fast and slow node to find the middle node, flip everything after the middle node, and compare the tail against the head. Not surprised to see the runtime is bad, since it's a 2-3 (1 + 0.5 + 0.5) pass solution.
