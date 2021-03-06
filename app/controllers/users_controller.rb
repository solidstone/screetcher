class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
		else
			render :new
		end
	end
	def user_params
		params.require(:user).permit(:username, :password)
	end
	def show
		@user = User.find(params[:id])
	end
end
