require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

class Search_test
    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def search(url)
        @driver.get(url)
        search_bar = @driver.find_element(:name,'q')
        search_bar.send_keys("ChatGPT")
        sleep(3)
        search_bar.send_keys(:enter)

    end
end
obj=Search_test.new
url="https://duckduckgo.com/"
obj.search(url)


sleep(3)
