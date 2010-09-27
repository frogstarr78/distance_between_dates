$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'distance_between_dates'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
 config.mock_with :mocha  
end

module DistanceBetweenDates
  class DatePart
    def less_than? other
      self < other
    end

    def greater_than? other
      self > other
    end

    def eql? other
      self == other
    end

    def inspect
      attributes = []
      attributes << (self.respond_to?( :day   ) ? "day=#@day"     : "")
      attributes << (self.respond_to?( :month ) ? "month=#@month" : "")
      attributes << (self.respond_to?( :year  ) ? "year=#@year"   : "")
      "<#{self.class}#{attributes*' '}>"
    end
  end
end
