require 'spec_helper'

describe "/histories/new.html.erb" do
  include HistoriesHelper

  before(:each) do
    assigns[:history] = stub_model(History,
      :new_record? => true
    )
  end

  it "renders new history form" do
    render

    response.should have_tag("form[action=?][method=post]", histories_path) do
    end
  end
end
