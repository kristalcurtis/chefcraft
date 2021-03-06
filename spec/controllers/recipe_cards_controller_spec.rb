require 'spec_helper'

describe RecipeCardsController do

  def mock_recipe_card(stubs={})
    @mock_recipe_card ||= mock_model(RecipeCard, stubs)
  end

  describe "GET index" do
    it "assigns all recipe_cards as @recipe_cards" do
      RecipeCard.stub(:find).with(:all).and_return([mock_recipe_card])
      get :index
      assigns[:recipe_cards].should == [mock_recipe_card]
    end
  end

  describe "GET show" do
    it "assigns the requested recipe_card as @recipe_card" do
      RecipeCard.stub(:find).with("37").and_return(mock_recipe_card)
      get :show, :id => "37"
      assigns[:recipe_card].should equal(mock_recipe_card)
    end
  end

  describe "GET new" do
    it "assigns a new recipe_card as @recipe_card" do
      RecipeCard.stub(:new).and_return(mock_recipe_card)
      get :new
      assigns[:recipe_card].should equal(mock_recipe_card)
    end
  end

  describe "GET edit" do
    it "assigns the requested recipe_card as @recipe_card" do
      RecipeCard.stub(:find).with("37").and_return(mock_recipe_card)
      get :edit, :id => "37"
      assigns[:recipe_card].should equal(mock_recipe_card)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created recipe_card as @recipe_card" do
        RecipeCard.stub(:new).with({'these' => 'params'}).and_return(mock_recipe_card(:save => true))
        post :create, :recipe_card => {:these => 'params'}
        assigns[:recipe_card].should equal(mock_recipe_card)
      end

      it "redirects to the created recipe_card" do
        RecipeCard.stub(:new).and_return(mock_recipe_card(:save => true))
        post :create, :recipe_card => {}
        response.should redirect_to(recipe_card_url(mock_recipe_card))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved recipe_card as @recipe_card" do
        RecipeCard.stub(:new).with({'these' => 'params'}).and_return(mock_recipe_card(:save => false))
        post :create, :recipe_card => {:these => 'params'}
        assigns[:recipe_card].should equal(mock_recipe_card)
      end

      it "re-renders the 'new' template" do
        RecipeCard.stub(:new).and_return(mock_recipe_card(:save => false))
        post :create, :recipe_card => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested recipe_card" do
        RecipeCard.should_receive(:find).with("37").and_return(mock_recipe_card)
        mock_recipe_card.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :recipe_card => {:these => 'params'}
      end

      it "assigns the requested recipe_card as @recipe_card" do
        RecipeCard.stub(:find).and_return(mock_recipe_card(:update_attributes => true))
        put :update, :id => "1"
        assigns[:recipe_card].should equal(mock_recipe_card)
      end

      it "redirects to the recipe_card" do
        RecipeCard.stub(:find).and_return(mock_recipe_card(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(recipe_card_url(mock_recipe_card))
      end
    end

    describe "with invalid params" do
      it "updates the requested recipe_card" do
        RecipeCard.should_receive(:find).with("37").and_return(mock_recipe_card)
        mock_recipe_card.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :recipe_card => {:these => 'params'}
      end

      it "assigns the recipe_card as @recipe_card" do
        RecipeCard.stub(:find).and_return(mock_recipe_card(:update_attributes => false))
        put :update, :id => "1"
        assigns[:recipe_card].should equal(mock_recipe_card)
      end

      it "re-renders the 'edit' template" do
        RecipeCard.stub(:find).and_return(mock_recipe_card(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested recipe_card" do
      RecipeCard.should_receive(:find).with("37").and_return(mock_recipe_card)
      mock_recipe_card.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the recipe_cards list" do
      RecipeCard.stub(:find).and_return(mock_recipe_card(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(recipe_cards_url)
    end
  end

end
