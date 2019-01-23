require 'sinatra/base'
# require 'shotgun'
# set :session_secret, 'super secret'

class Battle < Sinatra::Base

  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_one]
    @player_2 = params[:player_two]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
