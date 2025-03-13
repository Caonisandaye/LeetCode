##LC 94. Binary Tree Inorder Traversal

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
#Solution1
class Solution:
    def inorderTraversal(self, root: Optional[TreeNode]) -> List[int]:
        if not root:
            return []
        return (
            self.inorderTraversal(root.left)
            + [root.val]
            + self.inorderTraversal(root.right)
        )
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.59 MB / 97.29%

#Solution2
class Solution:
    def inorderTraversal(self, root: Optional[TreeNode]) -> List[int]:
        ans = []

        def inorderTraversalAndPrint(node):
            if not node:
                return
            inorderTraversalAndPrint(node.left)
            ans.append(node.val)
            inorderTraversalAndPrint(node.right)

        inorderTraversalAndPrint(root)
        return ans

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.77 MB / 54.80%

#Instruction: classic recurssion, second solution can avoid too many list operations.
