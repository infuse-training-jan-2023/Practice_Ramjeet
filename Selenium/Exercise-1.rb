require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"

class Test_browser
    def open_browser(driver)
        driver.manage.window.maximize
        sleep(3)
    end
    
    def close_browser(driver)
        driver.close()
    end
end


driver = Selenium::WebDriver.for :chrome
obj=Test_browser.new
obj.open_browser(driver)
obj.close_browser(driver)


