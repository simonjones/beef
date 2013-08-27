# encoding: utf-8

require 'spec_helper'
require 'beef/core_ext/nil_class'

describe "Nil class" do 
  it "should return an empty array when calling each" do
    nil.each {|a| a }.should == []
  end
end