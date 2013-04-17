module LessForm
	class Radio < Element
		
		def set?
			@element.selected?
		end	

		def set
			@element.click
		end
		
	end

end #LessForm
