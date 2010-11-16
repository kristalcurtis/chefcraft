require 'spec_helper'

describe "/recipe_boxes/new.html.erb" do
  include RecipeBoxesHelper

  before(:each) do
    assigns[:recipe_box] = stub_model(RecipeBox,
      :new_record? => true
    )
  end

  it "renders new recipe_box form" do
    render

    response.should have_tag("form[action=?][method=post]", recipe_boxes_path) do
    end
  end
end
