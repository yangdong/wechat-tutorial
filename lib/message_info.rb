class MessageInfo
	attr_reader :options

	def initialize options
		@options = options
	end

	def [] option
		@options[option]
	end
end