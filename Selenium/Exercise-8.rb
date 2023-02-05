require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="C:\\Users\\Ramjeet\\Documents\\chrome-webdriver\\chromedriver.exe"



class Horizontal_slider
    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end
    def move(url)
        @driver.get(url)


        frame = @driver.find_element(:css, 'iframe.lazyloaded')
        @driver.switch_to.frame(frame)
        slider=@driver.find_element(:tag_name, 'span')
        
        @driver.action.drag_and_drop_by(slider,786 - 485,431 - 431).perform

    end
    def close_browser
        @driver.close()
    end
end

obj=Horizontal_slider.new
url="https://www.globalsqa.com/demo-site/sliders/#Steps"
obj.move(url)
obj.close_browser


  