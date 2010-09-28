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

  it "calculates difference to another year" do
    @other_year = Year.new 2013
    ( @year -  @other_year ).should be( -3 )
    ( @other_year -  @year ).should be( 3 )
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

  it "compares correctly with something that quacks like a year" do
    require 'date'
    require 'time'

    @year.should be_less_than(Date.new 2011)
    @year.should be_greater_than(Date.new 2009)
    @year.should be_eql(Date.new 2010)

    @year.should be_less_than(DateTime.new 2011)
    @year.should be_greater_than(DateTime.new 2009)
    @year.should be_eql(DateTime.new 2010)

    @year.should be_less_than(Time.parse '2011-1-1')
    @year.should be_greater_than(Time.parse '2009-12-31')
    @year.should be_eql(Time.parse '2010-12-31')
  end

  it "doesn't compare to something it can't compare to" do
    lambda { @year <=> 2010 }.should raise_error(RuntimeError)
  end

  it "errors if the year is invalid" do
    lambda { Year.new 0 }.should raise_error RuntimeError
    lambda { Year.new "abc" }.should raise_error RuntimeError
    lambda { Year.new "1991" }.should_not raise_error RuntimeError
    lambda { Year.new 199.1 }.should_not raise_error RuntimeError
  end

  it "correctly converts into months" do
    @year.to_months.should be_eql 12
  end

  it "correctly converts to days" do
    @year.to_days.should be_eql 365
    Year.new(2008).to_days.should be_eql 366
  end
end
