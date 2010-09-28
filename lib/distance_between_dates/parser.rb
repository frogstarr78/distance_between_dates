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

      puts "from #{from_month.year} #{from_month.month} #{from_month.to_i} #{from_month.day} 
    to #{to_month.year} #{to_month.month} #{to_month.to_i} #{to_month.day}
    years #{from_month.year > to_month.year}
    month #{from_month.to_i > to_month.to_i}
    day   #{from_month.day > to_month.day}
    #{from_month > to_month}"
        if from_month > to_month
          from = Month.new( to_month.day,   to_month.month,   to_month.year   )
          to   = Month.new( from_month.day, from_month.month, from_month.year )
        else
          from = from_month
          to   = to_month
        end
      puts "from #{from.inspect},
    to #{to.inspect}"
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
