require 'spec_helper'

describe "message info parser" do
	context "parse user message" do
		let(:request) {"""<xml>
			<ToUserName>your_wechat_id</ToUserName>
			<FromUserName>test user</FromUserName>
			<CreateTime>1348831860</CreateTime>
			<MsgType>text</MsgType>
			<Content>richmond</Content>
			<MsgId>1234567890123456</MsgId>
		</xml>"""}

		before(:each) do
			@message_info = MessageParser.parse request
		end

		specify { @message_info[:to_user].should == 'test user' }
		specify { @message_info[:message_type].should == :text }
		specify { @message_info[:content].should == 'richmond' }
		specify { @message_info[:message_id].should == '1234567890123456' }
	end

	context "parse event" do
		let(:request) {"""<xml>
			<ToUserName>your_wechat_id</ToUserName>
			<FromUserName>test user</FromUserName>
			<CreateTime>123456789</CreateTime>
			<MsgType>event</MsgType>
			<Event>subscribe</Event>
			<EventKey>event key</EventKey>
		</xml>"""}

		before(:each) do
			@message_info = MessageParser.parse request
		end

		specify { @message_info[:event_key].should == 'event key' }
		specify { @message_info[:message_type].should == :event }
		specify { @message_info[:event].should == :subscribe }

	end
end