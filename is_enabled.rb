require 'selenium-webdriver'
puts "selenium ok"

driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10
puts "driver ok"

begin
  puts "begin ok"
  # Navigate to URL
  driver.get 'http://www.baidu.com/'

  # Returns true if element is enabled else returns false
  ele = driver.find_element(name: 'wd').enabled?
  puts ele

  ## Returns true if element is checked else returns false
  #ele = driver.find_element(css: "input[type='checkbox']:last-of-type").selected?
ensure
  driver.quit
end

puts "end"
