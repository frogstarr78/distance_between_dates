module DistanceBetweenDates
  class Day < DatePart
    include Comparable
    attr_accessor :day, :month, :year
    alias :to_i :day
    delegate_to :month, [ :days_in_month, :days_in_months_between, :year ]

    def initialize day, month, year
      @day   = day.to_i
      @month = Month.new month, year

      if self.day <= 0 or self.day > self.days_in_month
        raise "Invalid day '#@day' for month '#{self.month.name}'."
      end
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
      else
        if o.respond_to? :day
          if self.year == o
            if self.month == o
              self.day <=> o.day
            else
              self.month <=> o
            end
          else
            self.year <=> o
          end
        else
          raise "Unable to compare class '#{o.class}' that doesn't have :day method."
        end
      end
    end

    def - other
      self.day - other.day
    end
  end
end
