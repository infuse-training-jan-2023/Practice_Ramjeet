require 'test/unit'
require_relative 'ex3'

class Test_ex3 < Test::Unit::TestCase
    def test_if_object_created
        as=HashProb.new
        assert as.instance_of? HashProb
    end
    def test_HashFun1
        as=HashProb.new
        xyz_hash=Hash.new
        xyz_hash.store("543121",100)
        xyz_hash.store(540,120)
        xyz_hash.store("abc",11)

        assert_equal({"543121"=>100, "abc"=>11},as.HashFun(xyz_hash),"The expected does not match the actual")
    end

    def test_HashFun2
        as=HashProb.new
        xyz_hash=Hash.new
        xyz_hash.store(543122,"10")
        xyz_hash.store("abc",11)

        assert_equal({"abc"=>11},as.HashFun(xyz_hash),"The expected does not match the actual")
    end
    def test_HashFun_empty_hash
        as=HashProb.new
        xyz_hash=Hash.new

        assert_equal(false,as.HashFun(xyz_hash),"The expected does not match the actual")
    end
    def test_demo_method
        as=HashProb.new
        assert_equal(false,as.demo_method(0),"The expected does not match the actual")
        assert_equal(true,as.demo_method(1),"The expected does not match the actual")
    end

end
