require 'spec_helper'

describe "/history_entries/new.html.erb" do
  include HistoryEntriesHelper

  before(:each) do
    assigns[:history_entry] = stub_model(HistoryEntry,
      :new_record? => true
    )
  end

  it "renders new history_entry form" do
    render

    response.should have_tag("form[action=?][method=post]", history_entries_path) do
    end
  end
end
