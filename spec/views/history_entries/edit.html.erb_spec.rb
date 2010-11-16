require 'spec_helper'

describe "/history_entries/edit.html.erb" do
  include HistoryEntriesHelper

  before(:each) do
    assigns[:history_entry] = @history_entry = stub_model(HistoryEntry,
      :new_record? => false
    )
  end

  it "renders the edit history_entry form" do
    render

    response.should have_tag("form[action=#{history_entry_path(@history_entry)}][method=post]") do
    end
  end
end
