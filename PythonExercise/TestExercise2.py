import pytest
from array import array
from Exercise2 import ArrayOps

arr= [9,5,1,2,3,4,0,-1]

class TestExercise2:
    
    temp =ArrayOps()
    def test_if_object_created(self): 
        assert isinstance(self.temp,ArrayOps)

    def test_element_at_negative_index(self):
        assert self.temp.element_at(arr,-1) is None

    def test_element_at_out_of_bounds_index(self): 
        assert self.temp.element_at(arr,10) is None
    
    def test_element_at_valid(self):  
        assert self.temp.element_at(arr,4)==3

    def test_inclusive_range_endLessthanStart(self):   
        assert self.temp.inclusive_range(arr,2,0) is None

    def test_inclusive_range_endStartEqual(self):
        assert self.temp.inclusive_range(arr,1,1)==[5]

    def test_inclusive_range_valid(self):       
        assert self.temp.inclusive_range(arr,1,4)==[5, 1,2,3]

    def test_non_inclusive_range_endLessthanStart(self):        
        assert self.temp.non_inclusive_range(arr,2,1) is None

    def test_non_inclusive_range_valid(self):         
        assert self.temp.non_inclusive_range(arr,1,4)==[5, 1,2]

    def test_non_inclusive_range_endStartEqual(self):          
        assert self.temp.non_inclusive_range(arr,2,2) is None

    def test_start_and_length_negativeStart(self):        
        assert self.temp.start_and_length(arr,-1,2) is None

    def test_start_and_length_negativeLength(self):       
        assert self.temp.start_and_length(arr,1,-2) is None
    
    def test_start_and_length_outOfBoundsStart(self):      
        assert self.temp.start_and_length(arr,10,1) is None

    def test_start_and_length_outofBoudsLength(self):      
        assert self.temp.start_and_length(arr,2,12) is None

    def test_start_and_length_lengthisZero(self):      
        assert self.temp.start_and_length(arr,5,0)==[]

    def test_start_and_length_valid(self): 
        assert self.temp.start_and_length(arr,5,1)==[4]