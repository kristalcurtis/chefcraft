require 'spec_helper'

describe RecipeCard do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    RecipeCard.create!(@valid_attributes)
  end
end
