require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"


class Test_browser_title
    def get_title(driver)
        driver.get("https://www.leetcode.com/")
        puts("The title of the page is : #{driver.title}")
        sleep(3)
    end
    
    def close_browser(driver)
        driver.close()
    end
end



driver = Selenium::WebDriver.for :chrome
obj=Test_browser_title.new
obj.get_title(driver)
obj.close_browser(driver)

