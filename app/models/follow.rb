class Follow < ActiveRecord::Base
	belongs_to :user
	belongs_to :followed, class_name: :User
	validates_presence_of :user
	validates_presence_of :followed
	validates :followed, uniqueness: { scope: :user}
end
