require 'sinatra/base'
require 'date'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:what_is_your_name] = params[:your_name]
    session[:birthday_day] = params[:your_birthday_day]
    session[:birthday_month] = params[:your_birthday_month]
    redirect "/play"
  end

  get '/play' do
    @your_name = session[:what_is_your_name]
    @your_birthday_day = session[:birthday_day]
    @your_birthday_month = session[:birthday_month]
    @day = @your_birthday_day.to_i
    @month = @your_birthday_month.to_i
    start_date = DateTime.now
    end_date = DateTime.new(2019, @month, @day)
    if start_date > end_date
      end_date = DateTime.new(2020, @month, @day)
    end
    @date = (start_date..end_date).count
    erb(:play)
  end

  run! if app_file == $0
end
