module LessForm
	class Select < Element
		def initialize element
			super 
			@options = Options.new(element)
		end	

		def options
			@options.all	
		end	

		def select_by_value(value)
			@options.by_value(value).click
		end

		def select_by_text text
			@options.by_text(text).click
		end

		def select text
			select_by_text text
		end

		def selected
			@options.selected
		end
		
	end

end #LessForm
