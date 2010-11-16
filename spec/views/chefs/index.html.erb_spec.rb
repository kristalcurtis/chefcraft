require 'spec_helper'

describe "/chefs/index.html.erb" do
  include ChefsHelper

  before(:each) do
    assigns[:chefs] = [
      stub_model(Chef,
        :username => 
      ),
      stub_model(Chef,
        :username => 
      )
    ]
  end

  it "renders a list of chefs" do
    render
    response.should have_tag("tr>td", .to_s, 2)
  end
end
