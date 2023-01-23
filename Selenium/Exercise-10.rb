require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome


class Get_column
    def get(driver)
        driver.get("https://computer-database.gatling.io/computers")

        j=0
        table_head = driver.find_element(:tag_name, 'thead')
        table_row = table_head.find_element(:tag_name, 'tr')
        table_header = table_row.find_elements(:tag_name, 'th')
        puts table_header[j].text

        table_body = driver.find_element(:tag_name, 'tbody')
        table_row = table_body.find_elements(:tag_name, 'tr')
        table_row.each{ |n| 
        table_data = n.find_elements(:tag_name, 'td')
        puts table_data[j].text
        }

    end
    def close_browser(driver)
        driver.close()
    end
end

obj=Get_column.new
obj.get(driver)
obj.close_browser(driver)