class Playlist
	include Mongoid::Document
	field :name
	belongs_to :user
	has_many :songs

	validates_presence_of :name
end