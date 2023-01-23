require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

class Cell_value
    def get(driver)
        driver.get("https://the-internet.herokuapp.com/tables")
        i=0 #row
        j=0 #column
        table1 = driver.find_element(:tag_name, 'table')
        table_body = table1.find_element(:tag_name, 'tbody')
        table_row = table_body.find_elements(:tag_name, 'tr')[i]
    
        table_data=table_row.find_elements(:tag_name, 'td')[j]
    
        puts table_data.text

    end
    def close_browser(driver)
        driver.close()
    end
end

obj=Cell_value.new
obj.get(driver)
obj.close_browser(driver)
