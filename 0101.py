##LC 101. Symmetric Tree

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
#Solution
class Solution:
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:

        def twoTreeSymmetric(
            node1: Optional[TreeNode], node2: Optional[TreeNode]
        ) -> bool:
            if not node1 or not node2:
                return not node1 and not node2
            return (
                node1.val == node2.val
                and twoTreeSymmetric(node1.left, node2.right)
                and twoTreeSymmetric(node1.right, node2.left)
            )

        if not root:
            return True
        return twoTreeSymmetric(root.left, root.right)

                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.82 MB / 54.51%

#Instruction: Direct recurssion doesn't work here, but a helper function to check if left and right tree are symmetric works.
