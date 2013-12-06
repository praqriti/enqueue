class UsersController < ApplicationController
	def index 
		@users = User.all
		render json: @users
	end

	def show
		@user = User.find params[:id]
		render json: @user
	end

	def create
		@user = User.new params_user
		if @user.save!
			 render json: @user
		end
	end

	def params_user
		params.require(:user).permit(:name)
	end
end