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
      # if the difference is greater than 0 then it's already gone this year
      # so subtract it from 365 (not bothered about leap years LOL)
      #puts "You have #{365 - diff} days until your Birthday"
      @diff = 365 - @diff
    else
      # otherwise, the difference is less than 0 so that's how many days to go
      # converting the negative number to positive first...
      @diff = @diff.abs
    end

    @greeter.setDtb(@diff)

    erb :greeting

  end

  run! if app_file == $0

end
