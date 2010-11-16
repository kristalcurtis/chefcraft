class RecipeBoxesController < ApplicationController
  # GET /recipe_boxes
  # GET /recipe_boxes.xml
  def index
    @recipe_boxes = RecipeBox.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recipe_boxes }
    end
  end

  # GET /recipe_boxes/1
  # GET /recipe_boxes/1.xml
  def show
    @recipe_box = RecipeBox.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recipe_box }
    end
  end

  # GET /recipe_boxes/new
  # GET /recipe_boxes/new.xml
  def new
    @recipe_box = RecipeBox.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recipe_box }
    end
  end

  # GET /recipe_boxes/1/edit
  def edit
    @recipe_box = RecipeBox.find(params[:id])
  end

  # POST /recipe_boxes
  # POST /recipe_boxes.xml
  def create
    @recipe_box = RecipeBox.new(params[:recipe_box])

    respond_to do |format|
      if @recipe_box.save
        format.html { redirect_to(@recipe_box, :notice => 'RecipeBox was successfully created.') }
        format.xml  { render :xml => @recipe_box, :status => :created, :location => @recipe_box }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recipe_box.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_boxes/1
  # PUT /recipe_boxes/1.xml
  def update
    @recipe_box = RecipeBox.find(params[:id])

    respond_to do |format|
      if @recipe_box.update_attributes(params[:recipe_box])
        format.html { redirect_to(@recipe_box, :notice => 'RecipeBox was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recipe_box.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_boxes/1
  # DELETE /recipe_boxes/1.xml
  def destroy
    @recipe_box = RecipeBox.find(params[:id])
    @recipe_box.destroy

    respond_to do |format|
      format.html { redirect_to(recipe_boxes_url) }
      format.xml  { head :ok }
    end
  end
end
