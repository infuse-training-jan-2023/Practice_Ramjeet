require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome


class Content_dropdown_i_element
    def find_i_elemennt(driver)
        driver.get("https://testpages.herokuapp.com/styled/basic-html-form-test.html")

        j=0 #element to selected
        select_element = driver.find_element(:name, 'dropdown')
        option_elements = select_element.find_elements(tag_name: 'option')
        option_elements[j].click
        

    end
    def close_browser(driver)
        driver.close()
    end
end


obj=Content_dropdown_i_element.new
obj.find_i_elemennt(driver)
obj.close_browser(driver)



