module DistanceBetweenDates
  class Month < DatePart
    include Comparable

    attr_accessor :month, :year
    attr_reader :days_in_month

    def initialize month, year
      @month = month
      @year  = Year.new year
      @days_in_month = self.year.days_in_months.find {|dim| !dim.nil? and dim.month == self.to_i }.days
    end

    def to_i
      if index = self.class.names.index( month )
        return index % 13
      else
        return 0
      end
    end

    def days_in_months_between other
      months_between = 0
      years_days_in_months = [ year.days_in_months, other.year.days_in_months ]
      years_days_in_months.flatten!

      left_month = years_days_in_months.index {|days_in_months| days_in_months.month == self.to_i+1 and days_in_months.year == self.year.to_i }
      right_month = years_days_in_months.index {|days_in_months| days_in_months.month == other.to_i and days_in_months.year == other.year.to_i }

      months_between = years_days_in_months[left_month...right_month]
      months_between.inject( 0 ) do |memo, nxt|
        memo += nxt.days
      end
    end

    def <=> o 
      case o
      when Year
        self.year <=> o
      when Month
        if o.year == self.year
          self.to_i <=> o.to_i
        else
          self.year <=> o.year
        end
      when Day
      end
    end

    def distance_between? other
      swap_for_greater other do |lesser, greater|
        greater.to_i - lesser.to_i
      end
    end

    def - other 
      if self.eql? other
        diff = other.day - self.day
      else
        if self.distance_between?( other ) == 1
          diff = self.days_left_in_month + other.day
        else
          diff = self.days_left_in_month + self.days_in_months_between(other) + other.day
        end
      end
      diff
    end

    def Month.names 
      months = [nil] | %w(january february march april may june july august september october november december)
      capitalized_months = months.collect{|mo| mo.capitalize unless mo.nil? }
      abbreviated_months = [ months, capitalized_months ].flatten.collect{|mo| mo[0,3] unless mo.nil? }
      [ months, capitalized_months, abbreviated_months ].flatten
    end
  end
end
