module DistanceBetweenDates
  class DatePart
    class << self
      def now
        Time.now
      end
    end

    def self.delegate method, to 
      define_method method do |*arguments|
        to_obj = self.send(to)
        to_method = to_obj.method method
        if  to_method.arity > 0
          to_obj.send method, *arguments
        else
          to_obj.send method
        end
      end
    end

    private 
      def now
        self.class.now
      end

      def swap_for_greater other
        if self > other
          return yield( other, self )
        else
          return yield( self, other )
        end
      end
  end
end
