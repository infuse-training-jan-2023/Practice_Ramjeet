require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"



class Content_dropdown
    def select_dropdown(driver)
        driver.get("https://letcode.in/forms")
        select_element = driver.find_elements(:tag_name, 'select')[1]
        option_elements = select_element.find_elements(tag_name: 'option')
        option_elements.each{ |n| puts n.text }

    end
    def close_browser(driver)
        driver.close()
    end
end

driver = Selenium::WebDriver.for :chrome
obj=Content_dropdown.new
obj.select_dropdown(driver)
obj.close_browser(driver)

# email_locator = {relative: {tag_name: 'input', above: {id: 'password'}}}
# below,left,right

 