### 安装

Install manually
`gem install selenium-webdriver
or Add to project’s gemfile`
`gem 'selenium-webdriver', '= 4.7.1'`


### 使用

1.增加gem
`gem 'webdrivers', '~> 5.0'`

2.Require webdrivers in your project:

```
require 'webdrivers'

@driver = Selenium::WebDriver.for :chrome

```

3.增加path

```
echo 'export PATH=$PATH:/path/to/driver' >> ~/.bash_profile
source ~/.bash_profile

```

4.test
测试：如果成功，就会显示一段话
```
$chromedriver

```

得到这样的内容：

```
Starting ChromeDriver 95.0.4638.54 (d31a821ec901f68d0d34ccdbaea45b4c86ce543e-refs/branch-heads/4638@{#871}) on port 9515
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.

```

5.如果不增加path,建议增加

```
service = Selenium::WebDriver::Service.chrome(path: '/path/to/chromedriver')
driver = Selenium::WebDriver.for :chrome, service: service

```

### 脚本测试

使用谷歌的话就是这样：

```
driver = Selenium::WebDriver.for :chrome

```

提供需要的URL

```
driver.get('https://www.selenium.dev/selenium/web/web-form.html')
```
请求需要的内容

```
title = driver.title
```

设置需要的时间timeout

```
driver.manage.timeouts.implicit_wait = 500
```

查找需要的元素

```
text_box = driver.find_element(name: 'my-text')
submit_button = driver.find_element(tag_name: 'button')
```

对元素采取行动

```
text_box.send_keys('Selenium')
submit_button.click
```

请求元素信息

```
value = message.text
```

结束会话

```
driver.quit

把一切放在一起

```
# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'First Script' do
  it 'uses eight components' do
    driver = Selenium::WebDriver.for :chrome

    driver.get('https://www.selenium.dev/selenium/web/web-form.html')

    title = driver.title
    expect(title).to eq('Web form')

    driver.manage.timeouts.implicit_wait = 500

    text_box = driver.find_element(name: 'my-text')
    submit_button = driver.find_element(tag_name: 'button')

    text_box.send_keys('Selenium')
    submit_button.click

    message = driver.find_element(id: 'message')
    value = message.text
    expect(value).to eq('Received!')

    driver.quit
  end
end

```
```
