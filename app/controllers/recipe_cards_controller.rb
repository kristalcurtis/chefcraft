class RecipeCardsController < ApplicationController
  # GET /recipe_cards
  # GET /recipe_cards.xml
  def index
    @recipe_cards = RecipeCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recipe_cards }
    end
  end

  # GET /recipe_cards/1
  # GET /recipe_cards/1.xml
  def show
    @recipe_card = RecipeCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recipe_card }
    end
  end

  # GET /recipe_cards/new
  # GET /recipe_cards/new.xml
  def new
    @recipe_card = RecipeCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recipe_card }
    end
  end

  # GET /recipe_cards/1/edit
  def edit
    @recipe_card = RecipeCard.find(params[:id])
  end

  # POST /recipe_cards
  # POST /recipe_cards.xml
  def create
    @recipe_card = RecipeCard.new(params[:recipe_card])

    respond_to do |format|
      if @recipe_card.save
        format.html { redirect_to(@recipe_card, :notice => 'RecipeCard was successfully created.') }
        format.xml  { render :xml => @recipe_card, :status => :created, :location => @recipe_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recipe_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_cards/1
  # PUT /recipe_cards/1.xml
  def update
    @recipe_card = RecipeCard.find(params[:id])

    respond_to do |format|
      if @recipe_card.update_attributes(params[:recipe_card])
        format.html { redirect_to(@recipe_card, :notice => 'RecipeCard was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recipe_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_cards/1
  # DELETE /recipe_cards/1.xml
  def destroy
    @recipe_card = RecipeCard.find(params[:id])
    @recipe_card.destroy

    respond_to do |format|
      format.html { redirect_to(recipe_cards_url) }
      format.xml  { head :ok }
    end
  end
end
