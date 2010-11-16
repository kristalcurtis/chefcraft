require 'spec_helper'

describe "/recipe_cards/new.html.erb" do
  include RecipeCardsHelper

  before(:each) do
    assigns[:recipe_card] = stub_model(RecipeCard,
      :new_record? => true
    )
  end

  it "renders new recipe_card form" do
    render

    response.should have_tag("form[action=?][method=post]", recipe_cards_path) do
    end
  end
end
