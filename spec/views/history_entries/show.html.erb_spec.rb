require 'spec_helper'

describe "/history_entries/show.html.erb" do
  include HistoryEntriesHelper
  before(:each) do
    assigns[:history_entry] = @history_entry = stub_model(HistoryEntry)
  end

  it "renders attributes in <p>" do
    render
  end
end
