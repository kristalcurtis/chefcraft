require 'spec_helper'

describe RecipeBoxesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/recipe_boxes" }.should route_to(:controller => "recipe_boxes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/recipe_boxes/new" }.should route_to(:controller => "recipe_boxes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/recipe_boxes/1" }.should route_to(:controller => "recipe_boxes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/recipe_boxes/1/edit" }.should route_to(:controller => "recipe_boxes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/recipe_boxes" }.should route_to(:controller => "recipe_boxes", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/recipe_boxes/1" }.should route_to(:controller => "recipe_boxes", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/recipe_boxes/1" }.should route_to(:controller => "recipe_boxes", :action => "destroy", :id => "1") 
    end
  end
end
