class User
	include Mongoid::Document
	field :name
	validates_presence_of :name
	has_many :playlists
end