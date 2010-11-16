require 'spec_helper'

describe "/recipe_cards/edit.html.erb" do
  include RecipeCardsHelper

  before(:each) do
    assigns[:recipe_card] = @recipe_card = stub_model(RecipeCard,
      :new_record? => false
    )
  end

  it "renders the edit recipe_card form" do
    render

    response.should have_tag("form[action=#{recipe_card_path(@recipe_card)}][method=post]") do
    end
  end
end
