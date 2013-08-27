# encoding: utf-8

require 'spec_helper'
require 'beef/core_ext/hash'

describe "Hash access" do 
  before do
    @hash = {:one => "first", :two => "second", :three => "third", :four => "fourth"}
  end

  it "should allow method-like read" do
    @hash.one.should == "first"
  end

  it "should allow method-like write" do
    @hash.three = "3"
    @hash.three.should == "3"
  end

  it "should allow method-like query" do
    @hash.four?.should be_true
    @hash.five?.should be_false
    lambda { @hash.five }.should raise_error(NoMethodError)
  end

end

describe "Hash deep merge" do
  before do
    @hash1 = { :a => "a", :b => "b", :c => { :c1 => "c1", :c2 => "c2", :c3 => { :d1 => "d1" } } }
    @hash2 = { :a => 1, :c => { :c1 => 2, :c3 => { :d2 => "d2" } } }
    @expected_hash = { :a => 1, :b => "b", :c => { :c1 => 2, :c2 => "c2", :c3 => { :d1 => "d1", :d2 => "d2" } } }
  end

  it 'should deep merge two hashes' do
    @hash1.deep_merge(@hash2).should == @expected_hash
  end

  it 'should deep merge two hashes with bang method' do
    @hash1.deep_merge!(@hash2)
    @hash1.should == @expected_hash
  end
end