module LessForm
	class Element 
		attr_reader :element
		def initialize wd_element
			@element = wd_element		
		end 

		def valid_element? wd_element
			raise InvalidWebDriverElementError unless wd_element.is_a?(Selenium::WebDriver::Element)
		end

		def set what=nil
			@element.send_keys(what)
		end

		def click
			@element.click
		end

		def text
			@element.text
		end

		def displayed?
			@element.displayed?
		end

		def flash
			@element.flash
		end

		def method_missing m, *args, &blk
			if @element.respond_to?(m)
				@element.send m, *args, &blk
			else
				value = @element.attribute(m.to_s)
				(value.nil?)? super : value
			end #if
		end 

	end
end #LessForm
