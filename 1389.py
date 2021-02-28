##LC 1389. Create Target Array in the Given Order

#Solution
class Solution(object):
    def createTargetArray(self, nums, index):
        """
        :type nums: List[int]
        :type index: List[int]
        :rtype: List[int]
        """
        target = []
        
        for i in range(len(nums)):
            target.insert(index[i], nums[i])
        
        return target
                
#Result Runtime: 20 ms / 74.44%; Memory Usage: 13.4 MB / 41.28%

#Instruction: list.insert(index, object)
