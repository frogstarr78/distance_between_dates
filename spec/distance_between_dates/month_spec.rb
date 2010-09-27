require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Month" do
  it "has correct days in month" do
    @month = Month.new 'sep', 2010
    @month.days_in_month.should be(30)

    @month = Month.new 'Feb', 2007
    @month.days_in_month.should be(28)

    @month = Month.new 'Feb', 2008
    @month.days_in_month.should be(29)
  end

  it "has a year" do
    @month = Month.new 'sep', 2010
    @month.year.should be_a(Year)
    @month.year.to_i.should be 2010
  end

  it "finds correct index of month" do
    {"jul" => 7, "Mar" => 3, "January" => 1, "december" => 12}.each do |mon, index|
      @month = Month.new mon, 2010
      @month.to_i.should be index
    end
  end

  it "knows how many #days_in_months_between another_month" do
    @month = Month.new 'Jan', 2010
    @other_month = Month.new 'Mar', 2010
    @month.days_in_months_between(@other_month).should be(28)

    @month = Month.new 'Nov', 2010
    @other_month = Month.new 'Feb', 2011
    @month.days_in_months_between(@other_month).should be(62)
  end

  it "compares to a Year" do
    @month = Month.new 'Jan', 2010
    @month.should be_eql( Year.new 2010 )
    @month.should be_less_than( Year.new 2011 )
    @month.should be_greater_than( Year.new 2009 )
  end

  it "compares to another Month" do
    @month = Month.new 'Jan', 2010
    @other_month = Month.new 'Mar', 2010
    @month.should be_less_than @other_month

    @other_month.should be_greater_than @month

    @month.should be_eql( Month.new 'Jan', 2010 )
  end

  it "compares to a Day" do
    @month = Month.new 'jun', 2010
    @month.should be_eql( Day.new 1, 'June', 2010)
    @month.should be_eql( Day.new 30, 'June', 2010)

    @month.should be_less_than( Day.new 1, 'Jul', 2010 )
    @month.should be_greater_than( Day.new 31, 'May', 2010 )
  end

  it "calculates difference to another month" do
    @month = Month.new 'Jan', 2010
    @other_month = Month.new 'Mar', 2010
    ( @month -  @other_month ).should be( -2 )
    ( @other_month -  @month ).should be( 2 )
  end

  it "has month names" do 
    Month.names.include? 'january'
    Month.names.include? 'february'
    Month.names.include? 'march'
    Month.names.include? 'april'
    Month.names.include? 'may'
    Month.names.include? 'june'
    Month.names.include? 'july'
    Month.names.include? 'august'
    Month.names.include? 'september'
    Month.names.include? 'october'
    Month.names.include? 'november'
    Month.names.include? 'december'

    Month.names.include? 'January'
    Month.names.include? 'February'
    Month.names.include? 'March'
    Month.names.include? 'April'
    Month.names.include? 'May'
    Month.names.include? 'June'
    Month.names.include? 'July'
    Month.names.include? 'August'
    Month.names.include? 'September'
    Month.names.include? 'October'
    Month.names.include? 'November'
    Month.names.include? 'December'

    Month.names.include? 'jan'
    Month.names.include? 'feb'
    Month.names.include? 'mar'
    Month.names.include? 'apr'
    Month.names.include? 'may'
    Month.names.include? 'jun'
    Month.names.include? 'jul'
    Month.names.include? 'aug'
    Month.names.include? 'sep'
    Month.names.include? 'oct'
    Month.names.include? 'nov'
    Month.names.include? 'dec'

    Month.names.include? 'Jan'
    Month.names.include? 'Feb'
    Month.names.include? 'Mar'
    Month.names.include? 'Apr'
    Month.names.include? 'May'
    Month.names.include? 'Jun'
    Month.names.include? 'Jul'
    Month.names.include? 'Aug'
    Month.names.include? 'Sep'
    Month.names.include? 'Oct'
    Month.names.include? 'Nov'
    Month.names.include? 'Dec'
  end
end
