
class ArrayOps:

    def element_at(self,arr,index):
        if index < 0:
            print("Invalid index")
            return False
    
        elif index > len(arr):
            print("Invalid index")
            return False
        else:
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
        if start_pos < 0:
            return False

        if start_pos > len(arr):
            return False
        if length < 0:
            return False

        if length > len(arr):
            return False

        return arr[start_pos:start_pos+length]


# a=ArrayOps.new
# arr=[9,5,1,2,3,4,0,-1]
# puts a.element_at(arr,0)
# puts a.inclusive_range(arr, 0, 3)
# puts a.non_inclusive_range(arr, 0, 3)
# puts a.start_and_length(arr, 0, 4)