require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Parser" do
  it "recognizes 'from date to date' arguments" do
    Parser.expects(:extract_values).twice
    Parser.parse %w(from 1 1 2010 to 1 2 2010)
  end

  it "recognizes 'between date and date' arguments" do
    arguments = sequence('arguments')
    Parser.expects(:extract_values).with(%w(2 1 2010 and 2 2 2010)).in_sequence arguments
    Parser.expects(:extract_values).with(%w(2 2 2010)).in_sequence arguments

    Parser.parse %w(between 2 1 2010 and 2 2 2010)
  end

  it "recognizes 'in date_parts' arguments" do
    Parser.expects(:extract_values).times 4
    Parser.expects(:extract_date_parts).with(['days'])
    Parser.parse %w(between 2 1 2010 and 2 2 2010 in days)

    Parser.expects(:extract_date_parts).with(['months'])
    Parser.parse %w(from 2 1 2010 to 2 2 2010 in months)
  end

  describe "extracts correct values" do
    before do
    end

    it "extracts correct values from arguments without date_part" do
      @arguments = %w(4 Dec 2010)
      @day = Day.new '4', 'Dec', '2010'

      dmy = sequence('Day Month Year')
      @arguments.expects(:shift).returns( '4' ).in_sequence dmy
      @arguments.expects(:shift).returns( 'Dec' ).in_sequence dmy
      @arguments.expects(:shift).returns( '2010' ).in_sequence dmy
      Parser.expects(:conditionally_reset_year).with('2010', @arguments).returns( '2010' ).in_sequence dmy

      Day.expects(:new).with('4', 'Dec', '2010').returns @day
      Parser.extract_values(@arguments).should be_eql(@day)

    end

    it "extracts correct values from arguments with date_part" do
      @arguments = %w(5 Oct 2010 in years)
      @day = Day.new '5', 'Oct', '2010'

      dmy = sequence('Day Month Year')
      @arguments.expects(:shift).returns( '5' ).in_sequence dmy
      @arguments.expects(:shift).returns( 'Oct' ).in_sequence dmy
      @arguments.expects(:shift).returns( '2010' ).in_sequence dmy
      Parser.expects(:conditionally_reset_year).with('2010', @arguments).returns( '2010' ).in_sequence dmy

      Day.expects(:new).with('5', 'Oct', '2010').returns @day
      Parser.extract_values(@arguments).should be_eql(@day)
    end

    it "extracts correct values from quoted arguments without date_part" do
      @arguments = %W("4\ Dec\ 2010" and "5\ Dec\ 2010")
      @day = Day.new '4', 'Dec', '2010'

      quoted_dmy = sequence('Quoted "Day Month Year"')
      @arguments.expects(:shift).returns( @arguments.first ).in_sequence quoted_dmy
      @arguments.first.expects(:split).with(' ').returns( %w(4 Dec 2010) ).in_sequence quoted_dmy
      Parser.expects(:conditionally_reset_year).with('2010', @arguments).returns( '2010' ).in_sequence quoted_dmy
      Day.expects(:new).with('4', 'Dec', '2010').in_sequence(quoted_dmy).returns @day

      Parser.extract_values(@arguments).should be_eql(@day)
    end

    it "extracts correct values from quoted arguments with date_part" do
      @arguments = %W("6\ Oct\ 2010" and "5\ Dec\ 2010" in weeks)
      @day = Day.new '6', 'Oct', '2010'

      quoted_dmy = sequence('Quoted "Day Month Year"')
      @arguments.expects(:shift).returns( @arguments.first ).in_sequence quoted_dmy
      @arguments.first.expects(:split).with(' ').returns( %w(6 Oct 2010) ).in_sequence quoted_dmy
      Parser.expects(:conditionally_reset_year).with('2010', @arguments).returns( '2010' ).in_sequence quoted_dmy
      Day.expects(:new).with('6', 'Oct', '2010').in_sequence(quoted_dmy).returns @day

      Parser.extract_values(@arguments).should be_eql(@day)
    end
  end

  it "conditionally resets year correctly" do
    Parser.expects(:now).times(4).returns(Time.now)
    @arguments = %w(4 Oct 2010)
    @arguments.expects(:unshift).with 'from'
    Parser.conditionally_reset_year('from', @arguments).should be_eql(Time.now.year) 

    @arguments.expects(:unshift).with 'to'
    Parser.conditionally_reset_year('to', @arguments).should be_eql(Time.now.year)

    @arguments.expects(:unshift).with 'in'
    Parser.conditionally_reset_year('in', @arguments).should be_eql(Time.now.year)

    @arguments.expects(:unshift).never
    Parser.conditionally_reset_year('2010', %w(4 Oct)).should be_eql('2010')

    @arguments.expects(:unshift).never
    Parser.conditionally_reset_year(nil, %w(4 Oct)).should be_eql(Time.now.year)
  end 

  it "extracts \"plain\" date_parts from arguments"
  it "extracts positive date_parts from arguments"
  it "extracts full date_parts from arguments"
  it "extracts formats from arguments"
end
