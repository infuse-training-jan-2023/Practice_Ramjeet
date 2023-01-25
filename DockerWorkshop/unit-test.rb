require 'test/unit'
require_relative 'framework'

class Automate_framework < Test::Unit::TestCase
    def test_object_created
        test_obj=MyFramework.new()
        assert test_obj.instance_of? (MyFramework)
    end
    def test_navigate_to
        test_obj=MyFramework.new()
        assert_equal("success",test_obj.navigate_to("http://127.0.0.1:5500/demo.html"),"The test fails")
    end
    def test_select_element
        
        test_obj=MyFramework.new()
        url="http://127.0.0.1:5500/demo.html"
        test_obj.navigate_to(url)
        assert_not_nil(test_obj.select_element({"id": "search"},0),"The test fails")
        assert_nil(test_obj.select_element({"id": "sear"},0),"The test fails")

        assert_not_nil(test_obj.select_element({"class": "username"},0),"The test fails")
        assert_nil(test_obj.select_element({"class": "uname"},0),"The test fails")

        assert_not_nil(test_obj.select_element({"css_selector": "#search"},0),"The test fails")
        assert_equal([],test_obj.select_element({"css_selector": ".usr "},0),"The test fails")

        assert_not_nil(test_obj.select_element({"name": "search"},0),"The test fails")
        assert_nil(test_obj.select_element({"name": "sear"},0),"The test fails")

        assert_not_nil(test_obj.select_element({"xpath": "//*[@id='search']"},0),"The test fails")
        assert_nil(test_obj.select_element({"xpath": "//*[id='search']"},0),"The test fails")

        assert_not_nil(test_obj.select_element({"tag_name": "h3"},0),"The test fails")
        assert_nil(test_obj.select_element({"tag_name": "h1"},0),"The test fails")
    end
    def test_send_data
        
        test_obj=MyFramework.new()
        url="http://127.0.0.1:5500/demo.html"
        test_obj.navigate_to(url)
        assert_equal("sent",test_obj.send_data("abc",{"id"=>"search"},0,1),"The test fails")#id
        assert_equal("sent",test_obj.send_data("jason",{"class"=>"username"},0,1),"The test fails")#class

        assert_equal("error",test_obj.send_data("jason",{"clas"=>"username"},0,1),"The test fails")
        assert_equal("error",test_obj.send_data("jason",{"id"=>"rch"},0,1),"The test fails")
    end

    def test_click_on
        
        test_obj=MyFramework.new()
        url="http://127.0.0.1:5500/demo.html"
        test_obj.navigate_to(url)
        assert_equal("clicked",test_obj.click_on({"name"=>"submitbtn"},0),"The test fails")
        assert_equal("click_fail",test_obj.click_on({"name"=>"stbtn"},0),"The test fails")
    end

    def test_close_browser
        
        test_obj=MyFramework.new()
        url="http://127.0.0.1:5500/demo.html"
        test_obj.navigate_to(url)
        assert_equal("closed",test_obj.close_browser,"The test fails")
        
    end

end
