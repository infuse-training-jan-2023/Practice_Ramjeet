require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

class Get_table_header
    def get(driver)
        driver.get("https://cosmocode.io/automation-practice-webtable/")

        table_row = driver.find_element(:tag_name, 'tr')
        table_data = table_row.find_elements(:tag_name, 'td')
        table_data.each{ |n| puts n.text

        }


    end
    def close_browser(driver)
        driver.close()
    end
end

obj=Get_table_header.new
obj.get(driver)
obj.close_browser(driver)