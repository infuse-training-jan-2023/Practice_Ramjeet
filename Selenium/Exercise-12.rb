require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"

class Test_website
    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def open_website(url)
        @driver.get(url)
        @driver.manage.window.maximize
    end
    def log_in
        @driver.find_elements(:class_name,'nav-link')[4].click

        username=@driver.find_element(:name,'userName')
        username.send_keys("Jason")

        passw=@driver.find_element(:id,'exampleInputPassword1')
        passw.send_keys("1234")

        @driver.find_element(:class,'btn').click
    end

    def operate
        #read more
        sleep(4)
        @driver.find_element(:class,'btn').click
        # search and view product
        search=@driver.find_element(:id,'searchproduct')
        search.send_keys("iphone")
        # search.clear

        @driver.find_element(:xpath, '//*[@id="root"]/div/div/div[2]/div[2]/div/a').click

        @driver.find_element(:xpath, '//*[@id="root"]/div/div[1]/div[2]/div/button[2]').click
        @driver.find_elements(:class_name,'nav-link')[0].click
        @driver.find_elements(:class_name,'cart')[1].click   #add to cart
        @driver.find_elements(:class_name,'wishlist')[3].click   #add to wishlist
        @driver.find_elements(:class_name,'nav-link')[6].click #cart
        @driver.find_elements(:class_name,'nav-link')[7].click # wishlist
        @driver.find_elements(:class_name,'nav-link')[0].click #home
        user_greeting=@driver.find_elements(:class_name,'nav-link')[4]
        puts user_greeting.text            
        
    end
    def log_out
        @driver.find_elements(:class_name,'nav-link')[4].click#logout
    end
    def more_info
        @driver.find_elements(:class_name,'nav-link')[1].click#about us
    end
    def close_browser
        @driver.close()
    end

end



obj=Test_website.new
url="https://practise.usemango.co.uk/"
obj.open_website(url)
obj.log_in
obj.operate
obj.log_out
obj.more_info
obj.close_browser







