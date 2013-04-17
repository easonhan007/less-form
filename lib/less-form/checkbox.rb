module LessForm
	class Checkbox < Radio

		def set what
			if what
				(set?)? nil : @element.click
			else
				(set?)? @element.click : nil
			end #if
		end

		def clear
			set false
		end	
	end

end #LessForm
