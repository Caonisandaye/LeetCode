##LC 100. Same Tree

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
#Solution
class Solution:
    def isSameTree(self, p: Optional[TreeNode], q: Optional[TreeNode]) -> bool:
        if not p or not q:
            return not p and not q
        else:
            return p.val == q.val and self.isSameTree(p.left, q.left) and self.isSameTree(p.right, q.right)
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.70 MB / 91.28%

#Instruction: Classic recurssion. Not too much to say, all in the answer.
