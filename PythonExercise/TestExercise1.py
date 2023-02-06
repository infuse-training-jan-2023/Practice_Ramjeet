import pytest
from Exercise1 import SrnoAvg

class TestExercise1:

    temp=SrnoAvg()
    def test_object_created(self):
        self.temp.set_serial_no('002-10.00-20.00')
        assert isinstance(self.temp, SrnoAvg)
    
    def test_outputString_valid(self):
        self.temp.set_serial_no('002-10.00-40.00')
        assert '002-25.00'==self.temp.findOutputString()
        
    def test_outputString_Char(self):
        self.temp.set_serial_no('002-1x.00-40.00')
        with pytest.raises(ValueError) as e:
          self.temp.findOutputString()
        assert e.type == ValueError and "could not convert string to float: '1x.00'" in str(e)

    def test_outputString_multipleChar(self):
        self.temp.set_serial_no('&02-**.00-40.00')
        with pytest.raises(ValueError) as e:
          self.temp.findOutputString()
        assert e.type == ValueError and "could not convert string to float: '**.00'" in str(e)

    def test_outputString_wrongStruct(self):
        self.temp.set_serial_no('&02/**.00-1000')
        with pytest.raises(IndexError) as e:
          self.temp.findOutputString()
        assert e.type == IndexError and "list index out of range" in str(e)
