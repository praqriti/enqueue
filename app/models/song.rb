class Song
	include Mongoid::Document
	field :title
	field :url
	belongs_to :playlist
end