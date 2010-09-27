require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "DistanceBetweenDates" do
#  describe "Day" do
#    before do
#      @day = DistanceBetweenDates::Day.new 2, 'Jan', 2010
#    end
#    
#    it "has full list of month names and abbreviated month names" do
#      names = @day.month.send :names
#      names.should be_an(Array)
#      [ Date::MONTHNAMES, Date::ABBR_MONTHNAMES ].flatten.each do |name|
#        names.should include(name)
#      end
#    end
#
#    it "has correct days_in_month for non-leap year" do
#      @day.days_in_month.should be(31)
#    end
#
#    it "returns correct integer for month" do
#      @day.to_i.should be(2)
#      @day.month.to_i.should be(1)
#      @day.year.to_i.should be(2010)
#    end
#
#    it "has correct days_left_in_month" do
#      @day.days_left_in_month.should be(29)
#    end
#
#    it "correctly compares to another" do
#      @other_day = DistanceBetweenDates::Day.new 1, 'Mar', 2010
#      @day.should be_less_than( @other_day )
#    end
#
#    it "calculates correctly days_in_month_between with another month" do
#      @other_day = DistanceBetweenDates::Day.new 1, 'Mar', 2010
#      puts @day.days_in_months_between(@other_day)
#      @day.days_in_months_between(@other_day).should be(28)
#    end
#
#    describe "<=>" do
#      before do
#        @day  = DistanceBetweenDates::Day.new 1, 'Jan', 2010
#        @other_day = DistanceBetweenDates::Day.new 1, 'Feb', 2010
#      end
#
#      it "compares months if the years are the same" do
#        @other_day.expects(:month).twice.returns 'Feb'
#        @day.should be_less_than( @other_day )
#      end
#
#      it "is not equal to another_month" do
#        @other_day.expects(:month).returns 'Feb'
#        @day.should_not be_eql(@other_day)
#      end
#
#      it "is equal to same month and year" do
#        @other_day.expects(:day).never.returns 5
#        @other_day.expects(:month).returns 'Jan'
#        @day.should be_eql(@other_day)
#      end
#    end
#
#    describe "distance_between? other" do
#      before do
#        @day  = DistanceBetweenDates::Day.new 2, 'Jan', 2010
#      end
#
#      DistanceBetweenDates::Month.names[1..12].each_with_index do |name, i|
##        it "is correct #{name}"
##        do
##          @other = DistanceBetweenDates::Day.new  name, 2010
##
##          @day.distance_between?(@other).should be(i)
##        end
#      end
#    end
#
#    describe "-" do
#      before do
#        @day = DistanceBetweenDates::Day.new 13, 'Jan', 2010
#      end
#
#      it "compares days if eql?" do
#        @other_day = DistanceBetweenDates::Day.new 14, 'Jan', 2010
#        (@day - @other_day).should be 1
#      end
#
#      it "compares months if not eql?" do
#        @other_day = DistanceBetweenDates::Day.new 14, 'Feb', 2010
#        (@day - @other_day).should be 32
#      end
#
#      it "includes interleaving month days if distance_between? other >= 2" do
#        @other_day = DistanceBetweenDates::Day.new 17, 'Mar', 2010
#        (@day - @other_day).should be 60
#      end
#    end
#  end
end
