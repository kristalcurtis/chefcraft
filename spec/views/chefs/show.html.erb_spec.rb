require 'spec_helper'

describe "/chefs/show.html.erb" do
  include ChefsHelper
  before(:each) do
    assigns[:chef] = @chef = stub_model(Chef,
      :username => 
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(//)
  end
end
