require 'spec_helper'

describe "/histories/show.html.erb" do
  include HistoriesHelper
  before(:each) do
    assigns[:history] = @history = stub_model(History)
  end

  it "renders attributes in <p>" do
    render
  end
end
