require 'selenium-webdriver'


# C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe

class Automate_framework
    def initialize
        Selenium::WebDriver::Chrome.driver_path = "/opt/chromedriver-109.0.5414.74/chromedriver"
		options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument("--headless")
        options.add_argument("--no-sandbox")
        options.add_argument("--window-size=1920,1080")
        options.add_argument("--disable-gpu")
        options.add_argument("--disable-dev-shm-usage")
        @driver = Selenium::WebDriver.for :chrome, options: options
    end
    def navigate_to(url)
        begin
            @driver.get(url)
            @driver.manage.window.maximize
            sleep(3)
            #puts 'Navigated to site'
            return 'success'
        rescue
            puts "Failed to navigate to site"
            
        end
 
    end
    # def slide(locator,i,finish_x,start_x, finish_y, start_y)
    #     slider=select_element(locator,i)    
    #     @driver.action.drag_and_drop_by(slider,finish_x - start_x, finish_y - start_y).perform
    # end
    
    def select_element(locator,i)
        #ith element of class or tag
        #if not class keep i=0

        by, value = locator.first
        by=by.to_s
        begin
            if by=="id"
                @driver.find_element(:id, value)
            elsif by=="class"
                @driver.find_elements(:class, value)[i]
            elsif by=="css_selector"
                @driver.find_elements(:css, value)#[]**
            elsif by=="xpath"
                @driver.find_element(:xpath, value)
            elsif by=="name"
                @driver.find_element(:name, value)
            elsif by=="tag_name"
                @driver.find_elements(:tag_name, value)[i]
            end
        rescue
            puts "Couldn't select the specified element"
        end

    end


    def click_on(locator,i)

        element=select_element(locator,i)
        
        begin
            # puts element.nil?
            element.click
            return 'clicked'
        rescue =>e
            # puts e.message
            puts "Couldn't click on the specified element"
            return 'click_fail'
           
        end
  
    end

    def send_data(data,locator,i,opt)
        #if opt=1 press enter else no
        el=select_element(locator,i)
        begin
            el.send_keys(data)
            if opt==1
                el.send_keys(:enter)
            end
            return 'sent'
        rescue
            puts "Error in sending data"
            return 'error'
        end
    end
   

    def close_browser
        begin
            @driver.close()
            return 'closed'
        rescue
            puts "Browser couldn't be closed"
            return 'failed'
        end
    end

end



#  test=Automate_framework.new
# test.navigate_to("https://thewholetruthfoods.com/")
# test.select_element({"id": "search-key"},0)
# test.send_data("abc",{"id"=>"search-key"},1)
# test.click_on({"xpath"=>"//*[@id='header']/div/div[2]/div/div/a"},0)

# sleep(3)
# test.close_browser










