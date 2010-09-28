module DistanceBetweenDates
  class Parser
    class << self
      def parse argv
        while arg = argv.shift
          if arg == 'from'
            from_month = extract_values argv
          elsif arg == 'to'
            to_month = extract_values argv
          end
        end

        return [from, to]
      end

      def extract_year_values year, args 
        if year == 'from' or year == 'to'
          args.unshift year
          year = now.year
        end
        year ||= now.year
      end

      def extract_values args
          day   = args.shift
          if day[0,1] == '"'
            day, month, year = day.split ' '
            year = extract_year_values year, args
          else
            month = args.shift
            year  = args.shift
            year = extract_year_values year, args
          end
          day = day.to_i
          new day, month, year
      end
    end
  end
end
