##LC 1175. Prime Arrangements

#Solution
class Solution(object):
    def numPrimeArrangements(self, n):
        """
        :type n: int
        :rtype: int
        """
        prime = [2]

        for i in range(3, n+1):
            for p in prime:
                if i%p == 0:
                    break
            else:
                prime.append(i)
        
        res = 1
        d1, d2, M = len(prime), n-len(prime), 10**9+7
        
        for d in range(1, d1+1):
            res = (res*d%M)
        for d in range(1, d2+1):
            res = (res*d%M)
            
        return res
                
#Result Runtime: 16 ms / 82.61%; Memory Usage: 13.5 MB / 19.57%

#Instruction: maybe I figured out the best algo to get all the primes, asymptotically better than O(N^1.5), I believe it's around O(N^1.5/logN)
#according to the prime number theorem I might not even need to check p^2 with n.
