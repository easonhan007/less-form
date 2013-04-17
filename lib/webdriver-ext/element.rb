class Selenium::WebDriver::Element
	def flash
		high_light_script = 'arguments[0].style.border = "3px solid red"'
		@bridge.executeScript(high_light_script, self)
	end
	alias_method :high_light, :flash
end 

