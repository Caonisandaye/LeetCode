##LC 404. Sum of Left Leaves

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
#Solution1
class Solution:
    def sumOfLeftLeaves(self, root: Optional[TreeNode]) -> int:
        res = 0
        if root.left:
            if not root.left.left and not root.left.right:
                res += root.left.val
            res += self.sumOfLeftLeaves(root.left)
        if root.right:
            res += self.sumOfLeftLeaves(root.right)
        return res

#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.97 MB / 79.19%

#Solution2
class Solution:
    def sumOfLeftLeaves(self, root: Optional[TreeNode]) -> int:
        res, nodes = 0, [(root, "mid")]
        while nodes:
            node, pos = nodes.pop()
            if pos == "left" and not node.left and not node.right:
                res += node.val
            if node.left:
                nodes.append((node.left, "left"))
            if node.right:
                nodes.append((node.right, "right"))
        return res

#Result Runtime: 0 ms / 100.00%; Memory Usage: 18.03 MB / 47.73%

#Solution3
class Solution:
    def sumOfLeftLeaves(self, root: Optional[TreeNode]) -> int:
        self.res = 0

        def travel(node: Optional[TreeNode], pos: str) -> int:
            if not node:
                return 0
            if pos == "left" and not node.left and not node.right:
                self.res += node.val
            travel(node.left, "left")
            travel(node.right, "right")

        travel(root, "mid")
        return self.res
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.85 MB / 95.58%

#Instruction: Three DFS / inorder-Traversal way to solve this question, like the second one the best.
