require 'net/http'
require "json"

class ContentRetriver
	def self.retrieve targeting
		{
			total: 1,
			contents: [{
				title: '测试',
				description: '这段是自动应答的 测试',
}]
		}
	end
end
