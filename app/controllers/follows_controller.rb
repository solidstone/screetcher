class FollowsController < ApplicationController
	def create
		@follow = Follow.new()
		@follow.followed_id = params[:id]
		@follow.user = current_user
		if @follow.save
			redirect_to "/users/#{@follow.followed_id}"
		else
			redirect_to root_path
		end
	end

end
