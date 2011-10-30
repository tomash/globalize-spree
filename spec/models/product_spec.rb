require 'spec_helper'

describe Product do

  context "instance methods" do
    before(:all) do
      @product = Factory(:product)
    end

    it "should return true" do
      true.should eql true
    end
  end
end