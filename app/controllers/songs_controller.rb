class SongsController < ApplicationController

	def search
		@videos = youtube_client.videos_by(query: params[:query],:per_page => 5).videos.to_json
		render json: @videos
	end
end