##LC 257. Binary Tree Paths

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
#Solution1
class Solution:
    def binaryTreePaths(self, root: Optional[TreeNode]) -> List[str]:
        if not root:
            return []
        elif not root.left and not root.right:
            return [f"{root.val}"]
        left_paths = self.binaryTreePaths(root.left)
        right_paths = self.binaryTreePaths(root.right)
        return [f"{root.val}->" + path for path in left_paths + right_paths]
                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.7 MB / 92.82%

#Solution2
class Solution:
    def binaryTreePaths(self, root: Optional[TreeNode]) -> List[str]:
        ans = []

        def dfs(
            node: Optional[TreeNode],
            path: str = "",
            non_root: bool = True,
        ) -> None:
            if not node:
                return
            path += "->" * (non_root) + str(node.val)
            if not node.left and not node.right:
                ans.append(path)
            dfs(node.left, path)
            dfs(node.right, path)

        dfs(root, non_root=False)
        return ans

#Result Runtime: 0 ms / 100.00%; Memory Usage: 18 MB / 24.28%

#Instruction: Two dfs (postorder-traversal) solutions, the second one avoid recreating lists.
