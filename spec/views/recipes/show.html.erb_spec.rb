require 'spec_helper'

describe "/recipes/show.html.erb" do
  include RecipesHelper
  before(:each) do
    assigns[:recipe] = @recipe = stub_model(Recipe)
  end

  it "renders attributes in <p>" do
    render
  end
end
