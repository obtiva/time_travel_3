require "spec_helper"

describe FriendsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/friends" }.should route_to(:controller => "friends", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/friends/new" }.should route_to(:controller => "friends", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/friends/1" }.should route_to(:controller => "friends", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/friends/1/edit" }.should route_to(:controller => "friends", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/friends" }.should route_to(:controller => "friends", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/friends/1" }.should route_to(:controller => "friends", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/friends/1" }.should route_to(:controller => "friends", :action => "destroy", :id => "1")
    end

  end
end
