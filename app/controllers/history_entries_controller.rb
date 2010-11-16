class HistoryEntriesController < ApplicationController
  # GET /history_entries
  # GET /history_entries.xml
  def index
    @history_entries = HistoryEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @history_entries }
    end
  end

  # GET /history_entries/1
  # GET /history_entries/1.xml
  def show
    @history_entry = HistoryEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @history_entry }
    end
  end

  # GET /history_entries/new
  # GET /history_entries/new.xml
  def new
    @history_entry = HistoryEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @history_entry }
    end
  end

  # GET /history_entries/1/edit
  def edit
    @history_entry = HistoryEntry.find(params[:id])
  end

  # POST /history_entries
  # POST /history_entries.xml
  def create
    @history_entry = HistoryEntry.new(params[:history_entry])

    respond_to do |format|
      if @history_entry.save
        format.html { redirect_to(@history_entry, :notice => 'HistoryEntry was successfully created.') }
        format.xml  { render :xml => @history_entry, :status => :created, :location => @history_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @history_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /history_entries/1
  # PUT /history_entries/1.xml
  def update
    @history_entry = HistoryEntry.find(params[:id])

    respond_to do |format|
      if @history_entry.update_attributes(params[:history_entry])
        format.html { redirect_to(@history_entry, :notice => 'HistoryEntry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @history_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /history_entries/1
  # DELETE /history_entries/1.xml
  def destroy
    @history_entry = HistoryEntry.find(params[:id])
    @history_entry.destroy

    respond_to do |format|
      format.html { redirect_to(history_entries_url) }
      format.xml  { head :ok }
    end
  end
end
