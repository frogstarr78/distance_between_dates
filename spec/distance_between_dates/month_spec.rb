require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "DistanceBetweenDates" do
  describe "Month" do
    it "has correct days in month" do
      @month = DistanceBetweenDates::Month.new 'sep', 2010
      @month.days_in_month.should be(30)

      @month = DistanceBetweenDates::Month.new 'Feb', 2007
      @month.days_in_month.should be(28)

      @month = DistanceBetweenDates::Month.new 'Feb', 2008
      @month.days_in_month.should be(29)
    end

    it "has a year" do
      @month = DistanceBetweenDates::Month.new 'sep', 2010
      @month.year.should be_a(DistanceBetweenDates::Year)
      @month.year.to_i.should be 2010
    end

    it "finds correct index of month" do
      {"jul" => 7, "Mar" => 3, "January" => 1, "december" => 12}.each do |mon, index|
        @month = DistanceBetweenDates::Month.new mon, 2010
        @month.to_i.should be index
      end
    end

    it "knows how many #days_in_months_between another_month" do
      @month = DistanceBetweenDates::Month.new 'Jan', 2010
      @other_month = DistanceBetweenDates::Month.new 'Mar', 2010
      @month.days_in_months_between(@other_month).should be(28)

      @month = DistanceBetweenDates::Month.new 'Nov', 2010
      @other_month = DistanceBetweenDates::Month.new 'Feb', 2011
      @month.days_in_months_between(@other_month).should be(62)
    end

    it "compares to another month" do
      @month = DistanceBetweenDates::Month.new 'Jan', 2010
      @other_month = DistanceBetweenDates::Month.new 'Mar', 2010
      @month.should be_less_than @other_month

      @other_month.should be_greater_than @month

      @month.should be_eql( DistanceBetweenDates::Month.new 'Jan', 2010 )
    end

    it "compares to a year" do
      @month = DistanceBetweenDates::Month.new 'Jan', 2010
      @month.should be_eql( DistanceBetweenDates::Year.new 2010 )
      @month.should be_less_than( DistanceBetweenDates::Year.new 2011 )
      @month.should be_greater_than( DistanceBetweenDates::Year.new 2009 )
    end

    it "has month names" do 
      DistanceBetweenDates::Month.names.include? 'january'
      DistanceBetweenDates::Month.names.include? 'february'
      DistanceBetweenDates::Month.names.include? 'march'
      DistanceBetweenDates::Month.names.include? 'april'
      DistanceBetweenDates::Month.names.include? 'may'
      DistanceBetweenDates::Month.names.include? 'june'
      DistanceBetweenDates::Month.names.include? 'july'
      DistanceBetweenDates::Month.names.include? 'august'
      DistanceBetweenDates::Month.names.include? 'september'
      DistanceBetweenDates::Month.names.include? 'october'
      DistanceBetweenDates::Month.names.include? 'november'
      DistanceBetweenDates::Month.names.include? 'december'

      DistanceBetweenDates::Month.names.include? 'January'
      DistanceBetweenDates::Month.names.include? 'February'
      DistanceBetweenDates::Month.names.include? 'March'
      DistanceBetweenDates::Month.names.include? 'April'
      DistanceBetweenDates::Month.names.include? 'May'
      DistanceBetweenDates::Month.names.include? 'June'
      DistanceBetweenDates::Month.names.include? 'July'
      DistanceBetweenDates::Month.names.include? 'August'
      DistanceBetweenDates::Month.names.include? 'September'
      DistanceBetweenDates::Month.names.include? 'October'
      DistanceBetweenDates::Month.names.include? 'November'
      DistanceBetweenDates::Month.names.include? 'December'

      DistanceBetweenDates::Month.names.include? 'jan'
      DistanceBetweenDates::Month.names.include? 'feb'
      DistanceBetweenDates::Month.names.include? 'mar'
      DistanceBetweenDates::Month.names.include? 'apr'
      DistanceBetweenDates::Month.names.include? 'may'
      DistanceBetweenDates::Month.names.include? 'jun'
      DistanceBetweenDates::Month.names.include? 'jul'
      DistanceBetweenDates::Month.names.include? 'aug'
      DistanceBetweenDates::Month.names.include? 'sep'
      DistanceBetweenDates::Month.names.include? 'oct'
      DistanceBetweenDates::Month.names.include? 'nov'
      DistanceBetweenDates::Month.names.include? 'dec'

      DistanceBetweenDates::Month.names.include? 'Jan'
      DistanceBetweenDates::Month.names.include? 'Feb'
      DistanceBetweenDates::Month.names.include? 'Mar'
      DistanceBetweenDates::Month.names.include? 'Apr'
      DistanceBetweenDates::Month.names.include? 'May'
      DistanceBetweenDates::Month.names.include? 'Jun'
      DistanceBetweenDates::Month.names.include? 'Jul'
      DistanceBetweenDates::Month.names.include? 'Aug'
      DistanceBetweenDates::Month.names.include? 'Sep'
      DistanceBetweenDates::Month.names.include? 'Oct'
      DistanceBetweenDates::Month.names.include? 'Nov'
      DistanceBetweenDates::Month.names.include? 'Dec'
    end
  end
end
