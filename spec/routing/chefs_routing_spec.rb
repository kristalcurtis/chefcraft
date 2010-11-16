require 'spec_helper'

describe ChefsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/chefs" }.should route_to(:controller => "chefs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/chefs/new" }.should route_to(:controller => "chefs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/chefs/1" }.should route_to(:controller => "chefs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/chefs/1/edit" }.should route_to(:controller => "chefs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/chefs" }.should route_to(:controller => "chefs", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/chefs/1" }.should route_to(:controller => "chefs", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/chefs/1" }.should route_to(:controller => "chefs", :action => "destroy", :id => "1") 
    end
  end
end
