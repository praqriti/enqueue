class PlaylistsController < ApplicationController
	def index
		@user = User.find params[:user_id]
		@playlists = @user.playlists.all
		render json: @playlists
	end

	def show
		@user = User.find params[:user_id]
		@playlist = @user.playlists.find params[:id] 
		render json: @playlist
	end

	def create
		@user = User.find params[:user_id]
		@playlist = @user.playlists.create params_playlist 
		if @playlist.save!
			render json: @playlist
		end
	end

	def params_playlist
		params.require(:playlist).permit(:name)
	end
end