class Tag

	include DataMapper::Resource

	has n, :cheets, :through => Resource

	property :id, Serial
	property :text, String

end