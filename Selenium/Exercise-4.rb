require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"


class Test_radio_checkbox
    def click_radio_checkbox(driver)
        driver.get("https://demo.automationtesting.in/Register.html")
        driver.find_elements(:name, 'radiooptions')[0].click
        driver.find_element(:id, 'checkbox1').click
        sleep(3)
 
    end
    
    def close_browser(driver)
        driver.close()
    end
end

driver = Selenium::WebDriver.for :chrome

obj=Test_radio_checkbox.new
obj.click_radio_checkbox(driver)
obj.close_browser(driver)
