class Post < ActiveRecord::Base
	belongs_to :user
	has_many :favorites
	validates :content, presence: true 
	validates :content, length: { maximum: 140 }
	validates_presence_of :user
end
