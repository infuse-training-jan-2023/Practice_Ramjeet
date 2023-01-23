require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
class Test_website
    def open_website(driver)
        driver.get("https://practise.usemango.co.uk/")
        driver.manage.window.maximize
    end
    def log_in(driver)
        driver.find_elements(:class_name,'nav-link')[4].click

        username=driver.find_element(:name,'userName')
        username.send_keys("Jason")

        passw=driver.find_element(:id,'exampleInputPassword1')
        passw.send_keys("1234")

        driver.find_element(:class,'btn').click
    end

    def operate(driver)
        #read more
        sleep(4)
        driver.find_element(:class,'btn').click
        # search and view product
        search=driver.find_element(:id,'searchproduct')
        search.send_keys("iphone")
        # search.clear

        driver.find_element(:xpath, '//*[@id="root"]/div/div/div[2]/div[2]/div/a').click

        driver.find_element(:xpath, '//*[@id="root"]/div/div[1]/div[2]/div/button[2]').click
        driver.find_elements(:class_name,'nav-link')[0].click

        driver.find_elements(:class_name,'cart')[1].click   #add to cart

        driver.find_elements(:class_name,'wishlist')[3].click   #add to wishlist

        driver.find_elements(:class_name,'nav-link')[6].click #cart

        driver.find_elements(:class_name,'nav-link')[7].click # wishlist

        driver.find_elements(:class_name,'nav-link')[0].click #home

        user_greeting=driver.find_elements(:class_name,'nav-link')[4]

        puts user_greeting.text            
        
    end
    def log_out(driver)
        driver.find_elements(:class_name,'nav-link')[4].click#logout
    end
    def more_info(driver)
        driver.find_elements(:class_name,'nav-link')[1].click#about us
    end
    def close_browser(driver)
        driver.close()
    end

end



obj=Test_website.new
obj.open_website(driver)
obj.log_in(driver)
obj.operate(driver)
obj.log_out(driver)
obj.more_info(driver)
obj.close_browser(driver)







