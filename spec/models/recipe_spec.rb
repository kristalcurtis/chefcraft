require 'spec_helper'

describe Recipe do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Recipe.create!(@valid_attributes)
  end
end
