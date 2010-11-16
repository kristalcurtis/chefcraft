require 'spec_helper'

describe "/recipe_boxes/edit.html.erb" do
  include RecipeBoxesHelper

  before(:each) do
    assigns[:recipe_box] = @recipe_box = stub_model(RecipeBox,
      :new_record? => false
    )
  end

  it "renders the edit recipe_box form" do
    render

    response.should have_tag("form[action=#{recipe_box_path(@recipe_box)}][method=post]") do
    end
  end
end
