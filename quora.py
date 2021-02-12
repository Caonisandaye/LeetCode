# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution(object):
    def Umb(self, root):
        """
        :type root: TreeNode
        :rtype: int
        """
        if not root:
            return 0
        else:
            UT0 = UT11 = UT12 = sys.maxint
            
            UT0 = 1
            UT0 += self.Umb(root.left.left) + self.Umb(root.left.right) if root.left else 0
            UT0 += self.Umb(root.right.left) + self.Umb(root.right.right) if root.right else 0
            
            if root.left:
                UT11 = 1 + self.Umb(root.right)
                UT11 += self.Umb(root.left.left.left) + self.Umb(root.left.left.right) if root.left.left else 0
                UT11 += self.Umb(root.left.right.left) + self.Umb(root.left.right.right) if root.left.right else 0
            
            if root.right:
                UT12 = 1 + self.Umb(root.left)
                UT12 += self.Umb(root.right.left.left) + self.Umb(root.right.left.right) if root.right.left else 0
                UT12 += self.Umb(root.right.right.left) + self.Umb(root.right.right.right) if root.right.right else 0
            
            return min(UT0, UT11, UT12)
