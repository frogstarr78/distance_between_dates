require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Year" do
  before do 
    @year = Year.new 2010
  end

  it "is not a leap_year?" do
    @year.leap_year?.should be_false
  end

  it "is a leap_year?" do
    @year = Year.new 2008
    @year.leap_year?.should be_true
  end

  it "compares correctly to another year" do
    @year.should be_less_than( Year.new 2011 )
    @year.should be_greater_than( Year.new 2009 )
    @year.should be_eql( Year.new 2010 )
  end

  it "compares correctly to a Month" do
    @year.should be_less_than( Month.new 'jan', 2011 )
    @year.should be_greater_than( Month.new 'dec', 2009 )
    @year.should be_eql( Month.new 'may', 2010 )
  end

  it "compares correctly to a Day" do
    @year.should be_less_than( Day.new 1, 'jan', 2011 )
    @year.should be_greater_than( Day.new 31, 'dec', 2009 )
    @year.should be_eql( Day.new 20, 'may', 2010 )
  end

#  it "has correct days_in_months" do
#    @year.days_in_months.should be_eql([nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31])
#
#    @year = Year.new 2008
#    @year.days_in_months.should be_eql([nil, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31])
#  end
end
