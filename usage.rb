require 'rubygems' #for 187
require 'less-form'

dr = Selenium::WebDriver.for :chrome
dr.get 'http://www.baidu.com'

form = LessForm::Form.new dr

form.text_field(:id,'kw').set 'selenium-webdriver'
dr.find_element(id: 'su').click


