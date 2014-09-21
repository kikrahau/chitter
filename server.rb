require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require 'rest_client'
require './app/models/cheet.rb'
require './app/models/tag.rb'
require './app/models/user.rb'


env = ENV["RACK_ENV"] || "development"
# we're telling datamapper to use a postgres database on localhost. The name will be "bookmark_manager_test" or "bookmark_manager_development" depending on the environment
DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './app/models/cheet.rb' # this needs to be done after datamapper is initialised

# After declaring your models, you should finalise them
DataMapper.finalize

# However, the database tables don't exist yet. Let's tell datamapper to create them
DataMapper.auto_upgrade!

enable :sessions
set :session_secret, 'super secret'
use Rack::Flash
use Rack::MethodOverride