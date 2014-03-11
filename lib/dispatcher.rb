class Dispatcher
	def self.dispatch message_info
		return :help if not message_info[:content].nil? and message_info[:content].include? 'help'
		return :advance if not message_info[:content].nil? and message_info[:content].include? '阙浩然'
		return :welcome if not message_info[:event].nil? and message_info[:event] == :subscribe
		
	end
end
