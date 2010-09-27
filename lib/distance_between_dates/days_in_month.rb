module DistanceBetweenDates
  class DaysInMonth < DatePart
    attr_accessor :days, :month, :year
    def initialize days, month, year
      @days  = days||0
      @month = month
      @year  = year
    end

    def inspect
      "#<DaysInMonth:#{object_id} days='#@days' month='#@month' year='#@year'>"
    end
  end
end
