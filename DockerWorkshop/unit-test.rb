require 'test/unit'
require_relative 'framework'

#"http://127.0.0.1:5500/demo.html"

class Test_framework < Test::Unit::TestCase
    
    def test_object_created
        test_obj=Automate_framework.new
        assert test_obj.instance_of? Automate_framework
    end
    def test_navigate_to
        test_obj=Automate_framework.new
        assert_equal("success",test_obj.navigate_to("file:///app/demo.html"),"The test fails")
    end
    def test_select_element_by_id_pass

        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_not_nil(test_obj.select_element({"id": "search"},0),"The test fails")

    end
    def test_select_element_by_id_fail
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nil(test_obj.select_element({"id": "sear"},0),"The test fails")
    end
    def test_select_element_by_class_pass
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_not_nil(test_obj.select_element({"class": "username"},0),"The test fails")
    end
    def test_select_element_by_class_fail
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nil(test_obj.select_element({"class": "uname"},0),"The test fails")
    end
    def test_select_element_by_css_pass
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_not_nil(test_obj.select_element({"css_selector": "#search"},0),"The test fails")
    end
    def test_select_element_by_css_fail
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_equal([],test_obj.select_element({"css_selector": ".usr "},0),"The test fails")
    end
    def test_select_element_by_name_pass
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_not_nil(test_obj.select_element({"name": "search"},0),"The test fails")
    end
    def test_select_element_by_name_fail
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nil(test_obj.select_element({"name": "sear"},0),"The test fails")
    end
    def test_select_element_by_xpath_pass
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_not_nil(test_obj.select_element({"xpath": "//*[@id='search']"},0),"The test fails")
    end
    def test_select_element_by_xpath_fail
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nil(test_obj.select_element({"xpath": "//*[id='search']"},0),"The test fails")
    end
    def test_select_element_by_tagname_pass
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_not_nil(test_obj.select_element({"tag_name": "h3"},0),"The test fails")
    end
    def test_select_element_by_tagname_fail
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nil(test_obj.select_element({"tag_name": "h1"},0),"The test fails")
    end

    def test_select_multiple_elements_by_tagname_pass
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_not_nil(test_obj.select_elements_multiple_elements({"tag_name": "h3"},0),"The test fails")
    end
    def test_select_multiple_elements_by_tagname_fail
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nil(test_obj.select_elements_multiple_elements({"tag_name": "h5"},0),"The test fails")
    end

    def test_send_data_pass_by_id   
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nothing_raised(,test_obj.send_data("abc",{"id"=>"search"},0,1))
    
    end
    def test_send_data_pass_by_class
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nothing_raised(,test_obj.send_data("jason",{"class"=>"username"},0,1))
   
    end
    def test_send_data_fail_by_class
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_raise(,test_obj.send_data("jason",{"clas"=>"username"},0,1))

    
    end
    def test_send_data_fail_by_id
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_raise(,test_obj.send_data("jason",{"id"=>"rch"},0,1))
    end

    def test_click_on_pass
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nothing_raised(,test_obj.click_on({"name"=>"submitbtn"},0))
  
    end
    def test_click_on_fail
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_raise(,test_obj.click_on({"name"=>"stbtn"},0))
  
    end
    
    def test_close_browser
        
        driver=Driver.new.driver_method()
        test_obj=Automate_framework.new(driver)
        driver.get("file:///app/demo.html")
        assert_nil(test_obj.close_browser,"The test fails")
        
    end

end
