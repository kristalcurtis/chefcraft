require 'spec_helper'

describe HistoryEntriesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/history_entries" }.should route_to(:controller => "history_entries", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/history_entries/new" }.should route_to(:controller => "history_entries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/history_entries/1" }.should route_to(:controller => "history_entries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/history_entries/1/edit" }.should route_to(:controller => "history_entries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/history_entries" }.should route_to(:controller => "history_entries", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/history_entries/1" }.should route_to(:controller => "history_entries", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/history_entries/1" }.should route_to(:controller => "history_entries", :action => "destroy", :id => "1") 
    end
  end
end
