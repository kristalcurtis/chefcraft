require 'spec_helper'

describe HistoryEntry do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    HistoryEntry.create!(@valid_attributes)
  end
end
