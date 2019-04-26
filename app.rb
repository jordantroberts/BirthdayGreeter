require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/calculator' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    erb :greeting
  end

  run! if app_file == $0

end
