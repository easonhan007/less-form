less-form
====================

Simple wrapper of form element for selenium-webdriver ruby binding.

Install
-------
	gem install less-form

Usage
-----
	require 'rubygems' #for 187
	require 'less-form'

	dr = Selenium::WebDriver.for :chrome
	dr.get 'http://www.baidu.com'

	form = LessForm::Form.new dr

	form.text_field(:id,'kw').set 'selenium-webdriver'
	dr.find_element(id: 'su').click

Contributing to less-form
-------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2013 easonhan. See LICENSE.txt for
further details.

