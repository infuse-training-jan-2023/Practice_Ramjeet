import pytest
from Exercise1 import SrnoAvg

class Test_exercise1:
    def test_object_created(self):
        temp=SrnoAvg('002-10.00-20.00')
        assert isinstance(temp, SrnoAvg)
    
    def test_outputString_valid(self):
        temp=SrnoAvg('002-10.00-40.00')
        assert '002-25.00'==temp.findOutputString()

    def test_outputString_Char(self):
        temp=SrnoAvg('002-1x.00-40.00')
        assert 'error'==temp.findOutputString()

    def test_outputString_multipleChar(self):
        temp=SrnoAvg('&02-**.00-40.00')
        assert 'error'==temp.findOutputString()

    def test_outputString_wrongStruct(self):
        temp=SrnoAvg('&02/**.00-1000')
        assert 'error'==temp.findOutputString()

