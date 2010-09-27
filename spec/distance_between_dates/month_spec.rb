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
  end
end
