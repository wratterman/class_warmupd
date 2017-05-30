class LeapYear

  attr_accessor :year

  def initialize
    @year = 2017
  end

  def assert
    leap_year = true
    puts "#{@year} is a leap_year!"
  end

  def reject
    leap_year = false
    puts "#{@year} is not a leap_year!"
  end

  def condition
    if @year % 4 == 0 && @year % 100 != 0 && @year % 400 == 0
      true
    else
      false
    end
    # p year
  end

  def calculate
    leap_years = []
    until leap_years.length == 20
      if condition
          leap_years << @year
      elsif leap_years.length == 20
        break
      end
      @year = @year + 1
      # year += 1
      # require 'pry'; binding.pry
    end
   leap_years
  end
end

next_twenty = LeapYear.new
next_twenty.calculate
