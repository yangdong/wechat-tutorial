require './lib/content_retriever'
class PictureMessageHandler
	def self.handle message_info
    message_info.options.merge ContentRetriver.retrieve message_info
	end
end