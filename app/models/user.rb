class User

  include DataMapper::Resource

  property :id, Serial
  property :email, String, :unique => true
  property :user_name, String, :unique => true

end