


class ExerciseFour:
    def sub_arr_ops(self,numlist,k):
        try:
            count=0
            total= 0
            dict = {}
            dict[0] = 1
            for i in range(len(numlist)):
                total += numlist[i]
                if total - k in dict:
                    count += dict[total - k] 
                if total in dict:
                    dict[total] += 1  
                else: 
                    dict[total] = 1 
            return count
        except Exception as e:
            raise e

    
