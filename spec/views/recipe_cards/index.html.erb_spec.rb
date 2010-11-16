require 'spec_helper'

describe "/recipe_cards/index.html.erb" do
  include RecipeCardsHelper

  before(:each) do
    assigns[:recipe_cards] = [
      stub_model(RecipeCard),
      stub_model(RecipeCard)
    ]
  end

  it "renders a list of recipe_cards" do
    render
  end
end
