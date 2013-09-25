require "nokogiri"
require './lib/message_info'

class MessageParser
	def self.parse data
		parser = Nokogiri::XML(data)

		MessageInfo.new({
			:to_user => parser.xpath('//FromUserName').first.text,
			:content =>  parse_optional(parser, "Content"),
			:message_id => parse_optional(parser, "MsgId"),
			:message_type => parser.xpath('//MsgType').first.text.to_sym,
			:event => parse_optional(parser, "Event", :sym => true),
			:event_key => parse_optional(parser, "EventKey")
		})
	end

	def self.parse_optional parser, element, options={}
		parsed_value = parser.xpath("//#{element}").first
		if not parsed_value.nil?
			return parsed_value.text unless options[:sym]
			return parsed_value.text.to_sym
		end
		nil
	end
end