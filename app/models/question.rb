class Question < ActiveRecord::Base

	def gravatar
		"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
		
	end
end
