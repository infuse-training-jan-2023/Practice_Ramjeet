require 'selenium-webdriver'

class Driver
    def driver_method
        Selenium::WebDriver::Chrome.driver_path = "/opt/chromedriver-109.0.5414.74/chromedriver"
		options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument("--headless")
        options.add_argument("--no-sandbox")
        options.add_argument("--window-size=1920,1080")
        options.add_argument("--disable-gpu")
        options.add_argument("--disable-dev-shm-usage")
        driver = Selenium::WebDriver.for :chrome, options: options

        # Selenium::WebDriver::Chrome.driver_path = "C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
        # driver = Selenium::WebDriver.for :chrome
        return driver
    end
end
