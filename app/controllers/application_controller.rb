class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :youtube_client
 
  def youtube_client
    @youtube_client ||= YouTubeIt::Client.new(:dev_key => YouTubeITConfig.dev_key)
  end
end
