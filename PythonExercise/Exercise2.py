
class ArrayOps:
    def validate(self,index,arr)-> bool:
        if index < 0 or index > len(arr):
            print("match")
            print("Invalid index")
            return False
        else:
            return True

    def element_at(self,arr,index):
        if ArrayOps.validate(self,index,arr):
            return arr[index]
        

    def inclusive_range(self,arr, start_pos, end_pos):
        end_pos=end_pos+1
        if start_pos > end_pos:
            return False

        return arr[start_pos:end_pos]


    def non_inclusive_range(self,arr, start_pos, end_pos):

        if start_pos >= end_pos:
            return False
        return arr[start_pos:end_pos]

    def start_and_length(self,arr, start_pos, length):
        
        if ArrayOps.validate(start_pos,arr):
            if ArrayOps.validate(length,arr):
                return arr[start_pos:start_pos+length]


a=ArrayOps()
arr=[9,5,1,2,3,4,0,-1]
print(a.element_at(arr,4))
# print a.inclusive_range(arr, 0, 3)
# print a.non_inclusive_range(arr, 0, 3)
# print a.start_and_length(arr, 0, 4)