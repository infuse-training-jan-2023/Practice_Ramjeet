require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"


class Cell_value
    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def get(url)
        @driver.get(url)
        i=0 #row
        j=0 #column
        table1 = @driver.find_element(:tag_name, 'table')
        table_body = table1.find_element(:tag_name, 'tbody')
        table_row = table_body.find_elements(:tag_name, 'tr')[i]
    
        table_data=table_row.find_elements(:tag_name, 'td')[j]
    
        puts table_data.text

    end
    def close_browser
        @driver.close()
    end
end

url="https://the-internet.herokuapp.com/tables"
obj=Cell_value.new
obj.get(url)
obj.close_browser
