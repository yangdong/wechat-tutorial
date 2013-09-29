require 'sinatra'
require './lib/message_parser'
require './lib/message_info'
require './lib/content_retriever'
require './lib/dispatcher'
require './lib/settings'
require './lib/picture_message_handler'

VIEW_HANDLER = {
	:'picture_message' => PictureMessageHandler
}

get '/' do
  return erb :index if params['echostr'].nil?
  params['echostr']
end

post '/' do
	message_info = MessageParser.parse(request.body.read)

	view = Dispatcher.dispatch message_info

	@message = message_info

	@message = VIEW_HANDLER[view].handle message_info unless VIEW_HANDLER[view].nil?

	erb view
end
