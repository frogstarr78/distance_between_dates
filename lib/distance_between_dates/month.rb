module DistanceBetweenDates
  class Month < DatePart
    include Comparable

    attr_accessor :month, :year
    attr_reader :to_days
    alias :name :month

    def initialize month, year
      if month.is_a? Fixnum
        if month <= 0 or month > 12
          raise "Invalid month '#{month}'."
        end
        @month = self.class.names[month]
      else
        if self.class.names.include? month
          @month = month
        else
          if month =~ /^\d+$/
            @month = self.class.names[month.to_i]
          else
            raise "Invalid month '#{month}'."
          end
        end
      end
      @year  = Year.new year
      @to_days = self.year.days_in_months.find {|dim| !dim.nil? and dim.month == self.to_i }.days
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
        self <=> o.month
      else
        if o.respond_to? :month
          if self.year.to_i == o.year
            self.to_i <=> o.month.to_i
          else
            self.year <=> o
          end
        else
          raise "Unable to compare to class '#{o.class}' that doesn't have :month method."
        end
      end
    end

    def - other 
      self.to_i - other.to_i
    end

    def Month.names 
      months = [nil] | %w(January February March April May June July August September October November December)
      downcased_months = months.collect{|mo| mo.downcase unless mo.nil? }
      abbreviated_months = [ months, downcased_months ].flatten.collect{|mo| mo[0,3] unless mo.nil? }
      [ months, downcased_months, abbreviated_months ].flatten
    end
  end
end
