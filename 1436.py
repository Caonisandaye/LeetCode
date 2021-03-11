##LC 1436. Destination City

#Solution
class Solution(object):
    def destCity(self, paths):
        """
        :type paths: List[List[str]]
        :rtype: str
        """
        pathMap = {}
        
        for p in paths:
            try:
                pathMap[p[0]].append(p[1])
            except:
                pathMap[p[0]] = [p[1]]
        
        for p in paths:
            if p[1] not in pathMap:
                return p[1]
                
#Result Runtime: 32 ms / 92.91%; Memory Usage: 13.5 MB / 86.57%

#Instruction: if we have less constraints we might need to use a graph algorithm
