require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get("https://www.youtube.com/")
search_bar = driver.find_element(:name,"search_query")
search_bar.send_keys("Automation Testing with selenium")
sleep(3)
search_bar.send_keys(:enter)
sleep(3)
