import pytest
from Exercise4 import exercisefour
from data import numlistdata

class Test_exercise2:
    def test_object_created(self):
        temp=exercisefour()
        assert isinstance(temp, exercisefour)
    
    def test_sub_arr_ops(self):
        numlist=[1,2,3]
        k=3
        output=2
        temp=exercisefour()
        assert output ==temp.sub_arr_ops(numlist,k)

    def test_outputString_Char(self):
        k=-93
        output=1023
        temp=exercisefour()
        assert output ==temp.sub_arr_ops(numlistdata,k)

    
