module LessForm
	class Form
		attr_reader :wd

		def initialize wd
			@wd ||= wd if valid_wd?(wd)
		end 

		def valid_wd?(wd)
			raise InvalidDriverError unless wd.is_a?(Selenium::WebDriver::Driver)
			true
		end 

		def text_field(how, what)
			TextField.new(locate(how, what))
		end 

		def text_area(how, what)
			TextArea.new(locate(how, what))
		end 

		def radio how, what
			Radio.new locate(how, what)
		end 

		def table how, what
			Table.new locate(how, what)
		end

		def checkbox how, what
			Checkbox.new locate(how, what)
		end

		def select how, what
			Select.new locate(how, what)
		end
		
		def locate how, what
			@wd.find_element(how ,what)
		end

	end 
end #LessForm
