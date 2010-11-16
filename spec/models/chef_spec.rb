require 'spec_helper'

describe Chef do
  before(:each) do
    @valid_attributes = {
      :username => 
    }
  end

  it "should create a new instance given valid attributes" do
    Chef.create!(@valid_attributes)
  end
end
