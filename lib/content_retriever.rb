require 'net/http'
require "json"

class ContentRetriver
	def self.retrieve targeting
		{
			total: 1,
			contents: [{
				title: 'fake title',
				description: 'fake description',
				picture: 'http://weixin.qq.com/zh_CN/htmledition/images/weixin/weixin_logo178fb4.png',
				url: 'http://linkedme.in/2013/09/25/turoial-to-be-wechat-public-account-developer/'}]
		}
	end
end