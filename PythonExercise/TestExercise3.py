import pytest
from Exercise3 import SkipSport
class TestExercise3:
    def test_if_object_created(self):
        temp=SkipSport()
        assert isinstance(temp,SkipSport)
    def test_SkipSport_valid(self):
        temp=SkipSport()
        assert {2 :"Football", 3 : "Hockey"}==temp.skip_sportsfn(['Cricket','TT','Football','Hockey'],2)

    def test_SkipSport_exceeds_length(self):
        temp=SkipSport()
        assert False==temp.skip_sportsfn(['Cricket','TT','Football','Hockey'],7)

    def test_SkipSport_negative_length(self):
        temp=SkipSport()
        assert False==temp.skip_sportsfn(['Cricket','TT','Football','Hockey'],-1)
    def test_SkipSport_empty_array(self):
        temp=SkipSport()
        assert False==temp.skip_sportsfn([],2)
