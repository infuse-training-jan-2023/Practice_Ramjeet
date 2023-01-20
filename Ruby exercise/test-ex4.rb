require 'test/unit'
require_relative 'ex4'

class Test_ex4 < Test::Unit::TestCase
    def test_if_object_created
        sks=SkipS.new
        assert sks.instance_of? SkipS
    end
    def test_SkipSport
        sks=SkipS.new
        assert_equal({2=>"Football", 3=>"Hockey"},sks.skip_sports(['Cricket','TT','Football','Hockey'],2),"The expected does not match the actual")
    end

    def test_SkipSport_exceeds_length
        sks=SkipS.new
        assert_equal(false,sks.skip_sports(['Cricket','TT','Football','Hockey'],7),"The expected does not match the actual")
    end
    def test_SkipSport_negative_length
        sks=SkipS.new
        assert_equal(false,sks.skip_sports(['Cricket','TT','Football','Hockey'],-1),"The expected does not match the actual")
    end
    def test_SkipSport_empty_array
        sks=SkipS.new
        assert_equal(false,sks.skip_sports([],2),"The expected does not match the actual")
    end
end
