require 'selenium-webdriver'
puts "selenium ok"

driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10
puts "driver ok"

begin
  puts "begin ok"
  driver.get 'https://www.example.com'

  # Retrieves the computed style property 'color' of linktext
  cssValue = driver.find_element(:link_text, 'More information...').css_value('color')
  aValue = driver.find_element(:link_text, 'More information...').css_value('href')
  puts aValue
  puts cssValue
  #rgba(56, 72, 143, 1)


ensure
  driver.quit
end

puts "end"
