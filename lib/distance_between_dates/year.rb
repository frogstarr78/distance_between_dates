module DistanceBetweenDates
  LeapYearMonthDays	=	[nil, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  CommonYearMonthDays	=	[nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
 
  class Year < DatePart
    include Comparable
    attr_accessor :year
    alias :to_i :year

    def initialize year
      @year = year
    end

    def <=> o
      case o
      when Year
        self.year <=> o.year
      when Month
        self.year <=> o.year.to_i
      when Day
        self.year <=> o.year.to_i
      else
        if o.respond_to? :year
          self.year <=> o.year
        else
          raise "Unable to compare to class '#{o.class}' that doesn't have :year method."
        end
      end
    end

    def leap_year?
      year % 4 == 0
    end

    def days_in_months
      days = leap_year? ? LeapYearMonthDays : CommonYearMonthDays
      days_in_months = []
      days.each_with_index do |ndays, month|
        days_in_months << if days.nil?
          nil
        else
          DaysInMonth.new ndays, month, self.to_i
        end
      end
      days_in_months 
    end
  end
end
