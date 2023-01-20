require 'test/unit'
require_relative 'ex5'

class Test_ex5 < Test::Unit::TestCase
    def test_if_object_created
        as=JSONOps.new
        assert as.instance_of? JSONOps
    end
    def test_create_file
        js=JSONOps.new
        js.create_file
        assert_equal(true,File.file?("./person.json"),"The expected does not match the actual")
       
    end
    def test_update_file
        js=JSONOps.new
        assert_equal({"Age"=>25, "First Name"=>"Nicole", "Last Name"=>"Smith", "salary"=>25552.67},js.update_file,"The expected does not match the actual")
       
    end

end
