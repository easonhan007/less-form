module LessForm
	class LessFormError < StandardError; end
	class InvalidDriverError < LessFormError; end
	class InvalidWebDriverElementError < LessFormError; end
end #LessForm
