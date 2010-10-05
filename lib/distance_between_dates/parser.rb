module DistanceBetweenDates
  class Parser
    class << self
      def parse argv
        while arg = argv.shift
          case arg
          when 'from', 'between'
            from_month = extract_values argv
          when 'to', 'and'
            to_month = extract_values argv
          when 'in'
            date_parts = extract_date_parts argv
          end
        end

        return [from_month, to_month]
      end

      def extract_values args
        day   = args.shift
        if day[0,1] == '"'
          day, month, year = day.split ' '
          year = conditionally_reset_year year, args
        else
          month = args.shift
          year  = args.shift
          year = conditionally_reset_year year, args
        end

        Day.new day, month, year
      end

      def conditionally_reset_year year, args 
        if year == 'from' or year == 'to' or year == 'in'
          args.unshift year
          year = now.year
        end
        year ||= now.year
      end

      ALLOWED_DATE_PARTS = %w(days weeks months quarters years decades generations life\ times ages centuries millenia epochs eons)
      def extract_date_parts args
      end
    end
  end
end
