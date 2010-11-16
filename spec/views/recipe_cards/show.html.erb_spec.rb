require 'spec_helper'

describe "/recipe_cards/show.html.erb" do
  include RecipeCardsHelper
  before(:each) do
    assigns[:recipe_card] = @recipe_card = stub_model(RecipeCard)
  end

  it "renders attributes in <p>" do
    render
  end
end
