require 'spec_helper'

describe "/histories/index.html.erb" do
  include HistoriesHelper

  before(:each) do
    assigns[:histories] = [
      stub_model(History),
      stub_model(History)
    ]
  end

  it "renders a list of histories" do
    render
  end
end
