class Song
	include Mongoid::Document
	field :name
	field :url
	belongs_to :playlist
end