module DistanceBetweenDates
  class Day < DatePart
    include Comparable
    attr_accessor :day, :month, :year
    alias :to_i :day
    delegate :days_in_month, :month
#    delegate :names, :month
    delegate :days_in_months_between, :month

    def initialize day, month, year
      @day   = day
      @month = Month.new month, year
    end

    def year
      self.month.year
    end

    def year= year
      self.month.year = year
    end

    def days_left_in_month
      self.days_in_month - self.day
    end

    def <=> o 
      if self.year == o.year
        if self.month == o.month 
            self.day <=> o.day
        else
          self.month.to_i <=> o.month.to_i
        end
      else
        self.year <=> o.year
      end
    end

    def - other
      if self.month == other.month
        swap_for_greater other do |lesser, greater|
          return greater.day - lesser.day
        end
      else

      end
    end
  end
end
