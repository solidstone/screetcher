class User < ActiveRecord::Base
	validates_format_of :username, with: /\A[a-zA-Z0-9]+\z/
	validates :username, presence: true 
	validates :username, length: { maximum: 32 }
	validates :username, uniqueness: true
	validates :password, length: { minimum: 8, maximum: 32 }, allow_nil: true

	has_secure_password
	has_many :posts	

	def followed(user)
		if Follow.where(user_id: user.id, followed_id: id).count > 0
			true
		else 
			false
		end
	end
end
