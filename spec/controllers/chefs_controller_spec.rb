require 'spec_helper'

describe ChefsController do

  def mock_chef(stubs={})
    @mock_chef ||= mock_model(Chef, stubs)
  end

  describe "GET index" do
    it "assigns all chefs as @chefs" do
      Chef.stub(:find).with(:all).and_return([mock_chef])
      get :index
      assigns[:chefs].should == [mock_chef]
    end
  end

  describe "GET show" do
    it "assigns the requested chef as @chef" do
      Chef.stub(:find).with("37").and_return(mock_chef)
      get :show, :id => "37"
      assigns[:chef].should equal(mock_chef)
    end
  end

  describe "GET new" do
    it "assigns a new chef as @chef" do
      Chef.stub(:new).and_return(mock_chef)
      get :new
      assigns[:chef].should equal(mock_chef)
    end
  end

  describe "GET edit" do
    it "assigns the requested chef as @chef" do
      Chef.stub(:find).with("37").and_return(mock_chef)
      get :edit, :id => "37"
      assigns[:chef].should equal(mock_chef)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created chef as @chef" do
        Chef.stub(:new).with({'these' => 'params'}).and_return(mock_chef(:save => true))
        post :create, :chef => {:these => 'params'}
        assigns[:chef].should equal(mock_chef)
      end

      it "redirects to the created chef" do
        Chef.stub(:new).and_return(mock_chef(:save => true))
        post :create, :chef => {}
        response.should redirect_to(chef_url(mock_chef))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved chef as @chef" do
        Chef.stub(:new).with({'these' => 'params'}).and_return(mock_chef(:save => false))
        post :create, :chef => {:these => 'params'}
        assigns[:chef].should equal(mock_chef)
      end

      it "re-renders the 'new' template" do
        Chef.stub(:new).and_return(mock_chef(:save => false))
        post :create, :chef => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested chef" do
        Chef.should_receive(:find).with("37").and_return(mock_chef)
        mock_chef.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :chef => {:these => 'params'}
      end

      it "assigns the requested chef as @chef" do
        Chef.stub(:find).and_return(mock_chef(:update_attributes => true))
        put :update, :id => "1"
        assigns[:chef].should equal(mock_chef)
      end

      it "redirects to the chef" do
        Chef.stub(:find).and_return(mock_chef(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(chef_url(mock_chef))
      end
    end

    describe "with invalid params" do
      it "updates the requested chef" do
        Chef.should_receive(:find).with("37").and_return(mock_chef)
        mock_chef.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :chef => {:these => 'params'}
      end

      it "assigns the chef as @chef" do
        Chef.stub(:find).and_return(mock_chef(:update_attributes => false))
        put :update, :id => "1"
        assigns[:chef].should equal(mock_chef)
      end

      it "re-renders the 'edit' template" do
        Chef.stub(:find).and_return(mock_chef(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested chef" do
      Chef.should_receive(:find).with("37").and_return(mock_chef)
      mock_chef.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the chefs list" do
      Chef.stub(:find).and_return(mock_chef(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(chefs_url)
    end
  end

end
