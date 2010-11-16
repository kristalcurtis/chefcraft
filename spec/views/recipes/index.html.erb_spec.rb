require 'spec_helper'

describe "/recipes/index.html.erb" do
  include RecipesHelper

  before(:each) do
    assigns[:recipes] = [
      stub_model(Recipe),
      stub_model(Recipe)
    ]
  end

  it "renders a list of recipes" do
    render
  end
end
