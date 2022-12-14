require 'selenium-webdriver'


driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10

begin
  driver.get 'https://www.kanxue.com'
  #driver.get 'https://zhuanlan.kanxue.com/article-20043.htm'
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  #search_form = driver.find_element(:id,'header')
  #driver.find_element(class: 'loadingmore_box').send_keys('webElement')
  #text-center mt-4 loadingmore_box
  #driver.find_element(:class, 'text-center mt-4 loadingmore_box').click
  #div = driver.find_element(class: 'text-center mt-4 loadingmore_box')
  #element = driver.find_element(:tag_name,'div')

  # Get all the elements available with tag name 'p'
  element = driver.find_element(class: 'box_shadow')
  puts element
  blogs = element.find_elements(class: 'p-4')
  puts blogs

  blogs.each { |e|
    puts e
    puts e.text
  }

  jiazai = driver.find_element(class: 'loding_more').click

  #ele = wait.until { driver.find_element(css: 'p')}
  #title = wait.until { driver.find_element(css: 'h3')}
  #puts "title.text is: "
  #puts title.text
  #puts "ele.text is: "
  #foo = ele.text
  #puts "foo is: "
  #puts foo
  #puts "search_form is: "
  #puts search_form.inspect
  #puts "begin hihi"
ensure
  driver.quit
end

