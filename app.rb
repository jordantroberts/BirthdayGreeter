require 'sinatra/base'
require 'date'


class BirthdayGreeter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/calculator' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]

    monthnums = {
    "January" => 1,
    "February" => 2,
    "March" => 3,
    "April" => 4,
    "May" => 5,
    "June" => 6,
    "July" => 7,
    "August" => 8,
    "September" => 9,
    "October" => 10,
    "November" => 11,
    "December" => 12
  }
    birthday_date = Date.new(Date.today.year, monthnums[@month], @day.to_i)
    date_today = Date.today
    @diff = (date_today - birthday_date).to_i

    erb :greeting

  end

  run! if app_file == $0

end
