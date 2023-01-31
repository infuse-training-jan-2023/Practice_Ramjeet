require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"



class Get_column

    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def select_column(url)
        @driver.get(url)

        index=0
        table_head = @driver.find_element(:tag_name, 'thead')
        table_row = table_head.find_element(:tag_name, 'tr')
        table_header = table_row.find_elements(:tag_name, 'th')
        puts table_header[index].text

        table_body = @driver.find_element(:tag_name, 'tbody')
        table_row = table_body.find_elements(:tag_name, 'tr')
        table_row.each{ |row| 
        table_data = row.find_elements(:tag_name, 'td')
        puts table_data[index].text
        }

    end
    def close_browser
        @driver.close()
    end
end

obj=Get_column.new
url="https://computer-database.gatling.io/computers"
obj.select_column(url)
obj.close_browser