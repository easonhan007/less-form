module LessForm
	class Options 
		def initialize select_element
			@elements = select_element.find_elements(:css, 'option')
		end			

		def all
			@elements.map {|e| e.text }
		end
		
		def by_value value
			Option.new @elements.detect {|e| e.attribute('value') == value}
		end

		def by_text text
			Option.new @elements.detect {|e| e.text == text}
		end

		def selected
			Option.new @elements.detect {|e| e.selected?}
		end

	end

	class Option < Element
	end

end #LessForm
