require 'spec_helper'

describe "/recipe_boxes/index.html.erb" do
  include RecipeBoxesHelper

  before(:each) do
    assigns[:recipe_boxes] = [
      stub_model(RecipeBox),
      stub_model(RecipeBox)
    ]
  end

  it "renders a list of recipe_boxes" do
    render
  end
end
