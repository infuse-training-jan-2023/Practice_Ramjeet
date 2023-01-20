require 'test/unit'
require_relative 'ex6'

class Test_ex6 < Test::Unit::TestCase
    def test_if_object_created
        as=ConvertBase.new
        assert as.instance_of? ConvertBase
    end
    def test_create_file
        as=ConvertBase.new
        content = "Originally, John Doe was a sham name used to indicate any plaintiff in an
action of ejectment (a legal action to regain property) in civil court [ “
the string that will be base encoded ”]. Richard Roe was the counterpart, to
indicate the defendant. These fake names were used in delicate legal matters,
a practice that was abolished in English law in 1852.
"
        as.create_file(content)
        assert_equal(true,File.file?("content"),"The expected does not match the actual")
       
    end
    def test_encode_file
        str="the string that will be base encoded"
        as=ConvertBase.new
        assert_equal(true,as.encode_file(str),"The expected does not match the actual")
       
    end
    def test_read_file
        as=ConvertBase.new
        assert_equal(true, as.read_file,"The expected does not match the actual")
       
    end

end
