require 'selenium-webdriver'
puts "selenium ok"

driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10
puts "driver ok"

begin
  puts "begin ok"
  # Navigate to URL
  driver.get('https://www.selenium.dev/selenium/web/web-form.html')
  #driver.get 'https://the-internet.herokuapp.com/checkboxes'

  # Returns true if element is checked else returns false
  ele = driver.find_element(css: "input[type='checkbox']:last-of-type").selected?
  puts ele
ensure
  driver.quit
end

puts "end"
