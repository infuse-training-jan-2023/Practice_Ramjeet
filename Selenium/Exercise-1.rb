require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"

class Test_browser
   
    def open_browser
        @driver = Selenium::WebDriver.for :chrome
        @driver.manage.window.maximize
        sleep(3)
    end
    
    def close_browser
        @driver.close()
    end
end



obj=Test_browser.new
obj.open_browser
obj.close_browser


