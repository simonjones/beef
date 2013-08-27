# encoding: utf-8

require 'spec_helper'
require 'beef/core_ext/string'

describe "String falsey" do 
  it "should return false when to_b is called" do
    "false".to_b.should be_false
    "0".to_b.should be_false
    "nil".to_b.should be_false
  end
end

describe "String truey" do 
  it "should return true when to_b is called" do
    "true".to_b.should be_true
    "1".to_b.should be_true
  end
end

describe String do
  before do 
    @original_string = "is this is an original string? yes it is"
  end

  describe "titleised" do
    before do
      @titleised = @original_string.titleise
    end

    it "should return a new string" do
      @titleised.should_not equal(@original_string)
    end

    it "should titleise the first word reglardless" do
      @titleised.should =~ /^Is/
    end

    it "should titleise the last word reglardless" do
      @titleised.should =~ /Is$/
    end

    String::IGNORE.each do |ignore_word|
      it "should not titleise '#{ignore_word}'" do
        "This '#{ignore_word}' should be ignored".titleise.should == "This '#{ignore_word}' Should Be Ignored"
      end
    end
  end

  describe "titleised!" do
    before do
      @titleised = @original_string.titleise!
    end

    it "should replace original string" do
      @titleised.should equal(@original_string)
    end
  end
end