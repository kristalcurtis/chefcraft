require 'spec_helper'

describe "/recipes/edit.html.erb" do
  include RecipesHelper

  before(:each) do
    assigns[:recipe] = @recipe = stub_model(Recipe,
      :new_record? => false
    )
  end

  it "renders the edit recipe form" do
    render

    response.should have_tag("form[action=#{recipe_path(@recipe)}][method=post]") do
    end
  end
end
