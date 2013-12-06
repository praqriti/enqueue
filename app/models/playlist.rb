class Playlist
	include Mongoid::Document
	field :name
	embeds_many :songs
	belongs_to :user
end