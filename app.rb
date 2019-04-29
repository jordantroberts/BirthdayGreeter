require 'sinatra/base'
require './lib/greeter'

class BirthdayGreeter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/calculator' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    @greeter = Greeter.new

    erb :greeting
  end

  run! if app_file == $0

end
