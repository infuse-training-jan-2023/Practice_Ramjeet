require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"


class Test_browser_title
   
    def get_title(url)
        @driver = Selenium::WebDriver.for :chrome
        @driver.get(url)
        puts("The title of the page is : #{@driver.title}")
        sleep(3)
    end
    
    def close_browser
        @driver.close()
    end
end




obj=Test_browser_title.new
url="https://www.leetcode.com/"
obj.get_title(url)
obj.close_browser

