require 'selenium-webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.chrome
# normal error
#caps.page_load_strategy='normal'

# eager error
#caps.page_load_strategy='eager'
# none error
#caps.page_load_strategy='none'
driver = Selenium::WebDriver.for :chrome#, :desired_capabilities => caps
driver.get('https://www.baidu.com')
