require 'spec_helper'

describe "/histories/edit.html.erb" do
  include HistoriesHelper

  before(:each) do
    assigns[:history] = @history = stub_model(History,
      :new_record? => false
    )
  end

  it "renders the edit history form" do
    render

    response.should have_tag("form[action=#{history_path(@history)}][method=post]") do
    end
  end
end
