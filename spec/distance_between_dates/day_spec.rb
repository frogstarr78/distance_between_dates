require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Day" do
  it "has correct days_in_month" do
    @day = Day.new 29, 'sep', 2010
    @day.days_in_month.should be 30

    @day = Day.new 29, 'feb', 2008
    @day.days_in_month.should be 29
  end

  it "has correct remaining_days_in_month" do
    @day = Day.new 20, 'oct', 2010
    @day.remaining_days_in_month.should be(11)

    @day = Day.new 12, 'feb', 2008
    @day.remaining_days_in_month.should be 17

    @day.year = 2010
    @day.days_in_month.should be 28
    @day.remaining_days_in_month.should be 16
  end

  it "compares month number not name" do
    @day = Day.new 20, 'oct', 2010
    @day.should be_less_than(Day.new 20, 'Nov', 2010)
  end

  it "compares correctly to a Year" do
    @day = Day.new 27, 'sep', 2010
    @day.should be_less_than(Year.new 2011)
    @day.should be_greater_than(Year.new 2009)
  end

  it "compares correctly to a Month" do
    @day = Day.new 27, 'sep', 2010
    @day.should be_less_than(Month.new 'oct', 2010)
    @day.should be_greater_than(Month.new 'aug', 2010)

    @day.should be_less_than(Month.new 'sep', 2011)
    @day.should be_greater_than(Month.new 'sep', 2009)
  end

  it "compares correctly to another day" do
    @day = Day.new 20, 'oct', 2010
    @another_day = Day.new 1, 'nov', 2010
    @day.should be_less_than(@another_day)
    @another_day.should be_greater_than(@day)

    @day.should be_eql(Day.new 20, 'Oct', 2010)
    @day.should_not be_eql(Day.new 20, 'Oct', 2011)
    @day.should_not be_eql(Day.new 21, 'Oct', 2010)
    @day.should_not be_eql(Day.new 20, 'Nov', 2010)

    @day = Day.new 31, 'dec', 2000
    @day.should be_less_than(Day.new 1, 'jan', 2001)

    @day = Day.new 1, 'Jan', 2000
    @day.should be_greater_than(Day.new 31, 'dec', 1999)
  end

  it "compares correctly with something that quacks like a day" do
    require 'date'
    require 'time'

    @day = Day.new 27, 'September', 2010
    @day.should be_less_than(Date.new 2010, 9, 28)
    @day.should be_greater_than(Date.new 2010, 9, 26)
    @day.should be_eql(Date.new 2010, 9, 27)

    @day.should be_less_than(DateTime.new 2010, 9, 28)
    @day.should be_greater_than(DateTime.new 2010, 9, 26)
    @day.should be_eql(DateTime.new 2010, 9, 27)

    @day.should be_less_than(Time.parse '2010-9-28')
    @day.should be_greater_than(Time.parse '2010-9-26')
    @day.should be_eql(Time.parse '2010-9-27')

    @day.should be_less_than(Date.new 2010, 10, 27)
    @day.should be_less_than(Date.new 2011, 9, 27)

    @day.should be_greater_than(DateTime.new 2010, 8, 27)
    @day.should be_greater_than(DateTime.new 2009, 9, 27)

    @day.should be_eql(Time.parse '2010-9-27')
    @day.should_not be_eql(Time.parse '2010-10-27')

    @day = Day.new 31, 'dec', 2000
    @day.should be_less_than(Time.parse '2001-01-01')

    @day = Day.new 1, 'Jan', 2000
    @day.should be_greater_than(DateTime.new 1999, 12, 31)
  end

  it "doesn't compare to something it can't compare to" do
    @day = Day.new 13, 'Dec', 2010
    lambda { @day <=> 1 }.should raise_error(RuntimeError)
  end

  it "calculates difference to another month" do
    @day = Day.new 26, 'sep', 2010
    @other_day = Day.new 30, 'sep', 2010
    (@day - @other_day).should be -4
    (@other_day - @day).should be 4
  end

  it "errors if the day is an invalid day" do
    lambda { Day.new 0, 'jan', 2010 }.should raise_error RuntimeError
    lambda { Day.new 32, 'dec', 2010 }.should raise_error RuntimeError
    lambda { Day.new '31', 'dec', 2010 }.should_not raise_error RuntimeError
    lambda { Day.new 3.1, 'dec', 2010 }.should_not raise_error RuntimeError
  end
end
