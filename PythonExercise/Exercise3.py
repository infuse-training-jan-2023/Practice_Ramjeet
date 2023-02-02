
class SkipSport:
    def skip_sportsfn(self,arr,n):
        if n>len(arr) or n<0 or len(arr)==0:
            return False
        i=n
        temp_var={}
        while i< len(arr):
            temp_var[i]=arr[i]
            i=i+1
        
        return temp_var
 
obj=SkipSport()

print(obj.skip_sportsfn(['Cricket','TT','Football','Hockey'],2))