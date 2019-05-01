require 'sinatra/base'
require 'date'
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

    @greeter.setName(@name)
    @greeter.setBdMonth(@month)
    @greeter.setBdDay(@day)

    birthday_date = Date.new(Date.today.year, @month.to_i, @day.to_i)
    date_today = Date.today
    @diff = (date_today - birthday_date).to_i

    if @diff > 0
      @diff = 365 - @diff
    else
      @diff = @diff.abs
    end

    @greeter.setDtb(@diff)

    erb :greeting

  end

  run! if app_file == $0
end
