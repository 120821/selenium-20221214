require 'selenium-webdriver'
proxy = Selenium::WebDriver::Proxy.new(http: 'localhost:1090')
cap   = Selenium::WebDriver::Remote::Capabilities.chrome(proxy: proxy)

driver = Selenium::WebDriver.for(:chrome, capabilities: cap)
begin
  puts "begin ok"
  # Navigate to URL
  #driver.get 'http://www.baidu.com/'
  driver.get('http://www.google.com')
  puts 'google ok'
  puts driver
  puts driver.title

  # Returns true if element is enabled else returns false
  #ele = driver.find_element(name: 'btnK').enabled?
  #puts ele
  #search_input = driver.find_element(name: 'btnk')
  #search_input.send_keys('selenium')
  ## Clears the entered text
  #search_input.clear

ensure
  driver.quit
end

puts "end"
