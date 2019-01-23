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
    session[:player_1_health] = 100
    session[:player_2_health] = 100
    redirect "/play"
  end

  get '/play' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    @player_1_health = session[:player_1_health]
    @player_2_health = session[:player_2_health]
    @attack = params[:attack]
    erb(:play)
  end

  get '/attack' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
