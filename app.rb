require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

  get '/' do
    'Hello'
    erb :index
  end

  run! if app_file == $0

end
