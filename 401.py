##LC 401. Binary Watch

#Solution1
from itertools import combinations


class Solution:
    def readBinaryWatch(self, turnedOn: int) -> List[str]:
        ans, max_bh, max_bm = [], 4, 6
        all_nh = [1 << i for i in range(max_bh)]
        all_nm = [1 << i for i in range(max_bm)]
        for num_bh in range(0, turnedOn + 1):
            num_bm = turnedOn - num_bh
            if num_bm < 0 or num_bm > max_bm:
                continue
            comb_bh = list(combinations(all_nh, num_bh))
            comb_bm = list(combinations(all_nm, num_bm))
            for ch in comb_bh:
                sch = sum(ch)
                if sch > 11:
                    continue
                str_sch = str(sch)
                for cm in comb_bm:
                    scm = sum(cm)
                    if scm > 59:
                        continue
                    str_scm = "0" * (scm < 10) + str(scm)
                    ans.append(f"{str_sch}:{str_scm}")
        return ans

                
#Result Runtime: 0 ms / 100.00%; Memory Usage: 17.90 MB / 42.87%

#Instruction: Have to use combinations to iterate through all bits in hours / minutes, then double loop to get all timestamp combinations.
