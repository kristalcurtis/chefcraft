require 'spec_helper'

describe "/recipes/new.html.erb" do
  include RecipesHelper

  before(:each) do
    assigns[:recipe] = stub_model(Recipe,
      :new_record? => true
    )
  end

  it "renders new recipe form" do
    render

    response.should have_tag("form[action=?][method=post]", recipes_path) do
    end
  end
end
