require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "DistanceBetweenDates" do
  describe "Year" do
    before do 
      @year = DistanceBetweenDates::Year.new 2010
    end

    it "is not a leap_year?" do
      @year.leap_year?.should be_false
    end

    it "is a leap_year?" do
      @year = DistanceBetweenDates::Year.new 2008
      @year.leap_year?.should be_true
    end

    it "is < than 2011" do
      @year.should be_less_than( DistanceBetweenDates::Year.new 2011 )
    end

    it "is > than 2009" do
      @year.should be_greater_than( DistanceBetweenDates::Year.new 2009 )
    end

    it "is == 2010" do
      @year.should be_eql( DistanceBetweenDates::Year.new 2010 )
    end

    it "is == Month(2010)" do
      @year.should be_eql( DistanceBetweenDates::Month.new( 'Dec', 2010 ))
    end

#    it "has correct days_in_months" do
#      @year.days_in_months.should be_eql([nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31])
#
#      @year = DistanceBetweenDates::Year.new 2008
#      @year.days_in_months.should be_eql([nil, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31])
#    end
  end
end
