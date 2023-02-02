import pytest
from array import array
from Exercise2 import ArrayOps

arr= [9,5,1,2,3,4,0,-1]

class Test_exercise2:
    

    def test_if_object_created(self):
        temp= ArrayOps()
        assert isinstance(temp,ArrayOps)

    def test_element_at_negative_index(self):
        temp =ArrayOps()
        assert False==temp.element_at(arr,-1)

    def test_element_at_out_of_bounds_index(self):
        temp =ArrayOps()
        assert False==temp.element_at(arr,10)
    
    def test_element_at_valid(self):
        temp =ArrayOps()
        assert 3==temp.element_at(arr,4)

    def test_inclusive_range_endLessthanStart(self):
        temp =ArrayOps()
        assert False==temp.inclusive_range(arr,2,0)

    def test_inclusive_range_endStartEqual(self):
        temp =ArrayOps()
        assert [5]==temp.inclusive_range(arr,1,1)

    def test_inclusive_range_valid(self):
        temp =ArrayOps()    
        assert [5, 1,2,3]==temp.inclusive_range(arr,1,4)

  

    def test_non_inclusive_range_endLessthanStart(self):
        temp =ArrayOps()
        assert False==temp.non_inclusive_range(arr,2,1)

    def test_non_inclusive_range_valid(self):
        temp =ArrayOps()   
        assert [5, 1,2]==temp.non_inclusive_range(arr,1,4)


    def test_non_inclusive_range_endStartEqual(self):   
        temp =ArrayOps()
        assert False==temp.non_inclusive_range(arr,2,2)

    def test_start_and_length_negativeStart(self):
        temp =ArrayOps()
        assert False==temp.start_and_length(arr,-1,2)
    def test_start_and_length_negativeLength(self):
        temp =ArrayOps()
        assert False==temp.start_and_length(arr,1,-2)
    
    def test_start_and_length_outOfBoundsStart(self):
        temp =ArrayOps()  
        assert False==temp.start_and_length(arr,10,1)

    def test_start_and_length_outofBoudsLength(self):
        temp =ArrayOps()
        assert False==temp.start_and_length(arr,2,12)

    def test_start_and_length_lengthisZero(self):
        temp =ArrayOps()
        assert []==temp.start_and_length(arr,5,0)
    def test_start_and_length_valid(self):
        temp =ArrayOps()
        assert [4]==temp.start_and_length(arr,5,1)