require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

class Search_test
    def search(driver)
        driver.get("https://duckduckgo.com/")
        search_bar = driver.find_element(:name,'q')
        search_bar.send_keys("ChatGPT")
        sleep(3)
        search_bar.send_keys(:enter)

    end
end
obj=Search_test.new
obj.search(driver)


sleep(3)
