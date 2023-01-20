require 'test/unit'
require_relative 'ex2'

class Test_ex2 < Test::Unit::TestCase

    def test_if_object_created
        as=ArrayOps.new
        assert as.instance_of? ArrayOps
    end
    def test_element_at1
        as=ArrayOps.new
        assert_equal(false,as.element_at([9,5,1,2,3,4,0,-1],-1),"Element at Test fails")
    end
    def test_element_at2
        as=ArrayOps.new
        assert_equal(false,as.element_at([9,5,1,2,3,4,0,-1],10),"Element at Test fails")
    end
    def test_element_at3
        as=ArrayOps.new
        assert_equal(3,as.element_at([9,5,1,2,3,4,0,-1],4),"Element at Test fails")
    end
    def test_inclusive_range1
        as=ArrayOps.new
        assert_equal(false,as.inclusive_range([9,5,1,2,3,4,0,-1],2,0),"inclusive range Test fails")
    end
    def test_inclusive_range2
        as=ArrayOps.new
        assert_equal([5],as.inclusive_range([9,5,1,2,3,4,0,-1],1,1),"inclusive range Test fails")
    end
    def test_inclusive_range3
        as=ArrayOps.new
        assert_equal([5,1,2],as.inclusive_range([9,5,1,2,3,4,0,-1],1,3),"inclusive range Test fails")
    end
    def test_non_inclusive_range1
        as=ArrayOps.new
        assert_equal(false,as.non_inclusive_range([9,5,1,2,3,4,0,-1],2,1),"non-inclusive range Test fails")
    end
    def test_non_inclusive_range2
        as=ArrayOps.new
        assert_equal([5,1],as.non_inclusive_range([9,5,1,2,3,4,0,-1],1,3),"non-inclusive range Test fails")
    end
    def test_non_inclusive_range3
        as=ArrayOps.new
        assert_equal(false,as.non_inclusive_range([9,5,1,2,3,4,0,-1],2,2),"non-inclusive range Test fails")
    end
    def test_start_and_length1
        as=ArrayOps.new
        assert_equal(false,as.start_and_length([9,5,1,2,3,4,0,-1],-1,2),"start and length Test fails")
    end
    def test_start_and_length2
        as=ArrayOps.new
        assert_equal(false,as.start_and_length([9,5,1,2,3,4,0,-1],10,1),"start and length Test fails")
    end
    def test_start_and_length3
        as=ArrayOps.new
        assert_equal(false,as.start_and_length([9,5,1,2,3,4,0,-1],2,12),"start and length Test fails")
    end

end
