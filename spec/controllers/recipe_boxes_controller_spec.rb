require 'spec_helper'

describe RecipeBoxesController do

  def mock_recipe_box(stubs={})
    @mock_recipe_box ||= mock_model(RecipeBox, stubs)
  end

  describe "GET index" do
    it "assigns all recipe_boxes as @recipe_boxes" do
      RecipeBox.stub(:find).with(:all).and_return([mock_recipe_box])
      get :index
      assigns[:recipe_boxes].should == [mock_recipe_box]
    end
  end

  describe "GET show" do
    it "assigns the requested recipe_box as @recipe_box" do
      RecipeBox.stub(:find).with("37").and_return(mock_recipe_box)
      get :show, :id => "37"
      assigns[:recipe_box].should equal(mock_recipe_box)
    end
  end

  describe "GET new" do
    it "assigns a new recipe_box as @recipe_box" do
      RecipeBox.stub(:new).and_return(mock_recipe_box)
      get :new
      assigns[:recipe_box].should equal(mock_recipe_box)
    end
  end

  describe "GET edit" do
    it "assigns the requested recipe_box as @recipe_box" do
      RecipeBox.stub(:find).with("37").and_return(mock_recipe_box)
      get :edit, :id => "37"
      assigns[:recipe_box].should equal(mock_recipe_box)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created recipe_box as @recipe_box" do
        RecipeBox.stub(:new).with({'these' => 'params'}).and_return(mock_recipe_box(:save => true))
        post :create, :recipe_box => {:these => 'params'}
        assigns[:recipe_box].should equal(mock_recipe_box)
      end

      it "redirects to the created recipe_box" do
        RecipeBox.stub(:new).and_return(mock_recipe_box(:save => true))
        post :create, :recipe_box => {}
        response.should redirect_to(recipe_box_url(mock_recipe_box))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved recipe_box as @recipe_box" do
        RecipeBox.stub(:new).with({'these' => 'params'}).and_return(mock_recipe_box(:save => false))
        post :create, :recipe_box => {:these => 'params'}
        assigns[:recipe_box].should equal(mock_recipe_box)
      end

      it "re-renders the 'new' template" do
        RecipeBox.stub(:new).and_return(mock_recipe_box(:save => false))
        post :create, :recipe_box => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested recipe_box" do
        RecipeBox.should_receive(:find).with("37").and_return(mock_recipe_box)
        mock_recipe_box.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :recipe_box => {:these => 'params'}
      end

      it "assigns the requested recipe_box as @recipe_box" do
        RecipeBox.stub(:find).and_return(mock_recipe_box(:update_attributes => true))
        put :update, :id => "1"
        assigns[:recipe_box].should equal(mock_recipe_box)
      end

      it "redirects to the recipe_box" do
        RecipeBox.stub(:find).and_return(mock_recipe_box(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(recipe_box_url(mock_recipe_box))
      end
    end

    describe "with invalid params" do
      it "updates the requested recipe_box" do
        RecipeBox.should_receive(:find).with("37").and_return(mock_recipe_box)
        mock_recipe_box.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :recipe_box => {:these => 'params'}
      end

      it "assigns the recipe_box as @recipe_box" do
        RecipeBox.stub(:find).and_return(mock_recipe_box(:update_attributes => false))
        put :update, :id => "1"
        assigns[:recipe_box].should equal(mock_recipe_box)
      end

      it "re-renders the 'edit' template" do
        RecipeBox.stub(:find).and_return(mock_recipe_box(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested recipe_box" do
      RecipeBox.should_receive(:find).with("37").and_return(mock_recipe_box)
      mock_recipe_box.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the recipe_boxes list" do
      RecipeBox.stub(:find).and_return(mock_recipe_box(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(recipe_boxes_url)
    end
  end

end
