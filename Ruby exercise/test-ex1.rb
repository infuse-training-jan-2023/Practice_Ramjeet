require 'test/unit'
require_relative 'ex1'

class Test_ex1 < Test::Unit::TestCase
    def test_if_object_created
        as=Srno_avg.new('002-10.00-20.00')
        assert as.instance_of? Srno_avg
    end
    def test_outputString
        as=Srno_avg.new('002-10.00-40.00')
        outp=as.findOutputString()
        assert_equal('002-25.00',outp,"The expected does not match the actual")
    end
end
