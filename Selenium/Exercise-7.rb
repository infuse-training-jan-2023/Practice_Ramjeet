require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"



class Content_dropdown_i_element
    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def find_i_elemennt(url,index)
        @driver.get(url)
        select_element = @driver.find_element(:name, 'dropdown')
        option_elements = select_element.find_elements(tag_name: 'option')
        option_elements[index].click
        

    end
    def close_browser
        @driver.close()
    end
end


obj=Content_dropdown_i_element.new
url="https://testpages.herokuapp.com/styled/basic-html-form-test.html"
obj.find_i_elemennt(url,0)
obj.close_browser



