require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"



class Content_dropdown
    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def select_dropdown(url)
        @driver.get(url)
        select_element = @driver.find_elements(:tag_name, 'select')[1]
        option_elements = select_element.find_elements(tag_name: 'option')
        option_elements.each{ |n| puts n.text }

    end
    def close_browser(driver)
        driver.close()
    end
end


obj=Content_dropdown.new
url="https://letcode.in/forms"
obj.select_dropdown(url)
obj.close_browser


 