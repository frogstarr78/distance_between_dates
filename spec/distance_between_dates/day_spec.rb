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
  end
end
