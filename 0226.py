##LC 226. Invert Binary Tree

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

#Solution1
class Solution:
    def invertTree(self, root: Optional[TreeNode]) -> Optional[TreeNode]:
        if not root:
            return None
        new_root = TreeNode(root.val)
        new_root.left = self.invertTree(root.right)
        new_root.right = self.invertTree(root.left)
        return new_root

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.71 MB / 50.85%

#Solution2
class Solution:
    def invertTree(self, root: Optional[TreeNode]) -> Optional[TreeNode]:

        def flip(node: Optional[TreeNode]) -> None:
            if not node:
                return
            node.left, node.right = node.right, node.left
            flip(node.left)
            flip(node.right)

        flip(root)
        return root
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.69 MB / 81.94%

#Instruction: Two recurssive solution to resolve the problem, like the second one better.
