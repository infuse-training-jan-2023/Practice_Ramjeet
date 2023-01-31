require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"

class Test_click_element
    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def click_element(url)
        @driver.get(url)
        @driver.find_element(:class_name, 'link').click
        sleep(3)
        
    end
    
    def close_browser
        @driver.close()
    end
end



obj=Test_click_element.new
url="https://www.leetcode.com/"
obj.click_element(url)
obj.close_browser

