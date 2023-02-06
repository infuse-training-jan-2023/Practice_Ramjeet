import pytest
from Exercise4 import ExerciseFour
from data import numlistdata

class Test_exercise2:
    def test_object_created(self):
        temp=ExerciseFour()
        assert isinstance(temp, ExerciseFour)
    
    def test_sub_arr_ops(self):
        numlist=[1,2,3]
        k=3
        output=2
        temp=ExerciseFour()
        assert output ==temp.sub_arr_ops(numlist,k)

    def test_outputString_Char(self):
        k=-93
        output=1023
        temp=ExerciseFour()
        assert output ==temp.sub_arr_ops(numlistdata,k)

    
