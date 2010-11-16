require 'spec_helper'

describe "/chefs/new.html.erb" do
  include ChefsHelper

  before(:each) do
    assigns[:chef] = stub_model(Chef,
      :new_record? => true,
      :username => 
    )
  end

  it "renders new chef form" do
    render

    response.should have_tag("form[action=?][method=post]", chefs_path) do
      with_tag("input#chef_username[name=?]", "chef[username]")
    end
  end
end
