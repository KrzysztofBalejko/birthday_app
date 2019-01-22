require 'sinatra/base'
# require 'shotgun'
# set :session_secret, 'super secret'

class Battle < Sinatra::Base

  get '/' do
    'Testing infrastructure working!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
