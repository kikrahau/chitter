class Cheet
	include DataMapper::Resource

	has n, :tags, :through => Resource

	property :id, Serial
	property :message, Text
	property :time, Time

end 