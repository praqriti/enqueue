class Song
	include Mongoid::Document
	field :name
	field :url
	embedded_in :playlist
end