require 'net/http'
require "json"

class ContentRetriver
	def self.retrieve targeting
		{
			total: 1,
			contents: [{
				title: '这是预制在该公众账号中的图文消息',
				description: '该公众账户是为了演示如何成为微信平台的开发者，如果想要了解更详细的内容，请点击该消息。',
				picture: 'https://mp.weixin.qq.com/cgi-bin/getheadimg?fakeid=3097029212&r=975188&token=1685872554',
				url: 'http://linkedme.in/2013/09/25/turoial-to-be-wechat-public-account-developer/'}]
		}
	end
end