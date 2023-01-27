require_relative 'framework'

class WebTest
    def initialize
        @autoFrame=Automate_framework.new
    end
    def visit_site(url)
        @autoFrame.navigate_to(url)
    end

    def login
        @autoFrame.click_on({"xpath": "//*[@id='__next']/header/div[2]/div/div/div[2]/ul/li[1]/a"},0)
    
        @autoFrame.send_data("wokeg59443@fom8.com",{"name": "username"},0,0)
        
        @autoFrame.send_data("123456",{"name"=> "password"},0,1)

        sleep(2)
    end
 
    def addToCart
        @autoFrame.click_on({"class": "header-nav__menu-link"},0)
        @autoFrame.click_on({"class": "shop_product-image__13yyp"},0)
        sleep(2)

        @autoFrame.click_on({"xpath": '//*[@id="accordion__panel-1"]/div/button'},0)
        sleep(2)
        @autoFrame.click_on({"xpath": '//*[@id="__next"]/header/div[2]/div/div/div[1]/a/figure/div/img'},0)
     
    end
    def search
        @autoFrame.click_on({"xpath": "//*[@id='__next']/header/div[2]/div/div/div[2]/ul/li[2]/button"},0)
        @autoFrame.send_data("milk chocolate",{"class"=> "search-input"},0,1)
        sleep(3)
        @autoFrame.click_on({"xpath": '//*[@id="__next"]/header/div[2]/div/div/div[3]/div/div/div[1]/a'},0)
        # @autoFrame.click_on({"class": 'search_product-image__1Nptc'},2)

    end
    def logout
        @autoFrame.click_on({"xpath": "//*['@id=__next']/header/div[2]/div/div/div[2]/ul/li[1]/a"},0)
        @autoFrame.click_on({"class": "customer-account_logout__3TDOj"},0)
        
    end
end




mainTestObj=WebTest.new
mainTestObj.visit_site("https://thewholetruthfoods.com/")
mainTestObj.login

mainTestObj.search

mainTestObj.addToCart
sleep(3)
mainTestObj.logout
puts "done"


