# encoding: utf-8

require 'spec_helper'
require 'beef/core_ext/fixnum'

describe "Fixnum falsey" do 
  it "should return false when to_b is called" do
    0.to_b.should be_false
  end
end

describe "Fixnum truthy" do 
  it "should return true when to_b is called" do
    1.to_b.should be_true
    20.to_b.should be_true
  end
end