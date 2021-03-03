##LC 1469. Find All The Lonely Nodes

#Solution
# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution(object):
    def walk(self, root):
        if not root or (not root.left and not root.right):
            return
        elif not root.left:
            self.lonely.append(root.right.val)
        elif not root.right:
            self.lonely.append(root.left.val)
        self.walk(root.left)
        self.walk(root.right)
        
    def getLonelyNodes(self, root):
        """
        :type root: TreeNode
        :rtype: List[int]
        """
        self.lonely = []
        self.walk(root)
        return self.lonely
                
#Result Runtime: 36 ms / 99.25%; Memory Usage: 14.6 MB / 43.28%

#Instruction: simple in-order tree traversal, actually other type traversal might also walks
