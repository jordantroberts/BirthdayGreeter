require 'date'

# Notes from meeting with Sophie:
# Redirect to a get request after a post
# Make sure the Greeter method returns useful data, not just a string. E.g. returns an integer 0 or > 0
# View can decide what to put as a string - can interplay Ruby in there

class Greeter
  attr_reader :diff

  def self.match

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
    date = Date.new
    birthday_date = Date.new(Date.today.year, monthnums[@month], @day.to_i)
    today_date = Date.today
    if birthday_date == today_date
      "Happy birthday!"
    else
      @diff = birthday_date - today_date
      "There are #{@diff.to_i} days until your birthday"
    end
  end
end
