class Greeter

  def setName (n)
    @name = n
  end

  def getName
    return @name
  end

  def setBdDay (n)
    @bd_day = n
  end

  def getBdDay
    return @bd_day
  end

  def setBdMonth (n)
    @bd_monthnum = n
    setBdMonthName(n.to_i)
  end

  def getBdMonth
    return @bd_monthnum
  end

  def setBdMonthName (n)
    monthnums = {
    1 => "January",
    2 => "February",
    3 => "March",
    4 => "April",
    5 => "May",
    6 => "June",
    7 => "July",
    8 => "August",
    9 => "September",
    10 => "October",
    11 => "November",
    12 => "December"
    }

    @bd_monthname = monthnums[n.to_i]
  end

  def getBdMonthName
    return @bd_monthname
  end

  def setDtb (n)
    @dtb = n
  end

  def getDtb
    return @dtb
  end

end
