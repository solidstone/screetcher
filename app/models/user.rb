class User < ActiveRecord::Base
	validates_format_of :username, with: /\A[a-zA-Z0-9]+\z/
	validates :username, presence: true 
	validates :username, length: { maximum: 32 }

	validates :password, length: { minimum: 8, maximum: 32 }, allow_nil: true

	has_secure_password
	has_many :posts	
end
