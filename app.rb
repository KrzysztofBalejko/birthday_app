require 'sinatra/base'
# require 'shotgun'
# set :session_secret, 'super secret'

class Battle < Sinatra::Base


  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_one]
    session[:player_2_name] = params[:player_two]
    redirect "/play"
  end

  get '/play' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
