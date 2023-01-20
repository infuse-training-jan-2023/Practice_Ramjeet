
class ArrayOps

    def element_at(arr,index)
        if index < 0
            puts "Invalid index"
            return false
    
        elsif index > arr.length
            puts "Invalid index"
            return false
        else
            return arr[index]
        end

    end
    def inclusive_range(arr, start_pos, end_pos)
        if start_pos > end_pos
            return false
        end

        return arr[start_pos..end_pos]

    end

    def non_inclusive_range(arr, start_pos, end_pos)

        if start_pos >= end_pos
            return false
        end
        return arr[start_pos..end_pos-1]
    end

    def start_and_length(arr, start_pos, length)
        if start_pos < 0
            return false
        end
        if start_pos > arr.length
            return false
        end
        if length < 0
            return false
        end
        if length > arr.length
            return false
        end
        return arr[start_pos..start_pos+length-1]
    end
end

a=ArrayOps.new
arr=[9,5,1,2,3,4,0,-1]
puts a.element_at(arr,0)
puts a.inclusive_range(arr, 0, 3)
puts a.non_inclusive_range(arr, 0, 3)
puts a.start_and_length(arr, 0, 4)