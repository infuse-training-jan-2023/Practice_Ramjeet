require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"


class Test_radio_checkbox
    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def click_radio_checkbox(url)
        @driver.get(url)
        @driver.find_elements(:name, 'radiooptions')[0].click
        @driver.find_element(:id, 'checkbox1').click
        sleep(3)
 
    end
    
    def close_browser
        @driver.close()
    end
end


url="https://demo.automationtesting.in/Register.html"
obj=Test_radio_checkbox.new
obj.click_radio_checkbox(url)
obj.close_browser
