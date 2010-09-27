module DistanceBetweenDates
  class Day < DatePart
    include Comparable
    attr_accessor :day, :month, :year
    alias :to_i :day
    delegate_to :month, [ :days_in_month, :days_in_months_between, :year ]

    def initialize day, month, year
      @day   = day
      @month = Month.new month, year
    end

    def year= year
      self.month = Month.new self.month.name, year
    end

    def remaining_days_in_month
      self.days_in_month - self.day
    end

    def <=> o 
      case o
      when Year
        self.year <=> o
      when Month
        self.month <=> o
      when Day
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
