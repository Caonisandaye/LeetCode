##LC 1603. Design Parking System

#Solution
class ParkingSystem(object):

    def __init__(self, big, medium, small):
        """
        :type big: int
        :type medium: int
        :type small: int
        """
        self.bms = [big, medium, small]

    def addCar(self, carType):
        """
        :type carType: int
        :rtype: bool
        """
        self.bms[carType-1] -= 1
        return self.bms[carType-1] >= 0
        
#Result Runtime: 128 ms / 75.39%; Memory Usage: 13.9 MB / 92.17%

#Instruction: Implement a class
