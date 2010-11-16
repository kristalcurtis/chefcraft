require 'spec_helper'

describe "/history_entries/index.html.erb" do
  include HistoryEntriesHelper

  before(:each) do
    assigns[:history_entries] = [
      stub_model(HistoryEntry),
      stub_model(HistoryEntry)
    ]
  end

  it "renders a list of history_entries" do
    render
  end
end
