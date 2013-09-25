require 'yaml'
class Settings

	class << self
		def [] entry
			settings[entry]
		end

		private
		def settings
			@settings ||= YAML.load_file(File.dirname(__FILE__) + '/../config.yml')
		end
	end
end