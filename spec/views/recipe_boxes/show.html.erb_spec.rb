require 'spec_helper'

describe "/recipe_boxes/show.html.erb" do
  include RecipeBoxesHelper
  before(:each) do
    assigns[:recipe_box] = @recipe_box = stub_model(RecipeBox)
  end

  it "renders attributes in <p>" do
    render
  end
end
