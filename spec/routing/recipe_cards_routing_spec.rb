require 'spec_helper'

describe RecipeCardsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/recipe_cards" }.should route_to(:controller => "recipe_cards", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/recipe_cards/new" }.should route_to(:controller => "recipe_cards", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/recipe_cards/1" }.should route_to(:controller => "recipe_cards", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/recipe_cards/1/edit" }.should route_to(:controller => "recipe_cards", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/recipe_cards" }.should route_to(:controller => "recipe_cards", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/recipe_cards/1" }.should route_to(:controller => "recipe_cards", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/recipe_cards/1" }.should route_to(:controller => "recipe_cards", :action => "destroy", :id => "1") 
    end
  end
end
