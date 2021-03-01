##LC 1773. Count Items Matching a Rule

#Solution
class Solution(object):
    def countMatches(self, items, ruleKey, ruleValue):
        """
        :type items: List[List[str]]
        :type ruleKey: str
        :type ruleValue: str
        :rtype: int
        """
        keyDic = {'type':0, 'color':1, 'name':2}
        
        return sum(i[keyDic[ruleKey]] == ruleValue for i in items)
                
#Result Runtime: 220 ms / 100.00%; Memory Usage: 21 MB / 100.00%

#Instruction: simple implementation of dictionary. See the result? I am so diao!
