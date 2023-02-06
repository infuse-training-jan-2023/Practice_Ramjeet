


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

    
    

# for i in range(len(numlist)):
#     j=i+1
#     total=numlist[i]
#     if numlist[i]==k:
#         count=count+1
 
#     # list = [ total=tot for j in range(len(numlist))]
#     # if(total==k):
#     #     count=count+1  

#     while j<len(numlist):
#         total=total+numlist[j]
#         if total==k:
#             count=count+1    
#         j=j+1

# print(count)