require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"

class Test_click_element
    def click_element(driver)
        driver.get("https://www.leetcode.com/")
        driver.find_element(:class_name, 'link').click
        sleep(3)
        
    end
    
    def close_browser(driver)
        driver.close()
    end
end

driver = Selenium::WebDriver.for :chrome

obj=Test_click_element.new
obj.click_element(driver)
obj.close_browser(driver)

