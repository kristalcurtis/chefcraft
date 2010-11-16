require 'spec_helper'

describe "/chefs/edit.html.erb" do
  include ChefsHelper

  before(:each) do
    assigns[:chef] = @chef = stub_model(Chef,
      :new_record? => false,
      :username => 
    )
  end

  it "renders the edit chef form" do
    render

    response.should have_tag("form[action=#{chef_path(@chef)}][method=post]") do
      with_tag('input#chef_username[name=?]', "chef[username]")
    end
  end
end
