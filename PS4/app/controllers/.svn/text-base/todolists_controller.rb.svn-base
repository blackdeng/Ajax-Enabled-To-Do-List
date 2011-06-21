class TodolistsController < ApplicationController
  # GET /todolists
  # GET /todolists.xml
  def index
    @todolists = Todolist.find(:all, :order=>"Sorted_Order")
    @todolist = Todolist.new

    respond_to do |format|
      format.html # index.html.erb
      #format.xml  { render :xml => @todolists }
      format.js
    end
  end

  # GET /todolists/1
  # GET /todolists/1.xml
  def show
    @todolist = Todolist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @todolist }
    end
  end

  # GET /todolists/new
  # GET /todolists/new.xml
  def new
    @todolist = Todolist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @todolist }
    end
  end

  # GET /todolists/1/edit
  def edit
    @todolist = Todolist.find(params[:id])
  end

  # POST /todolists
  # POST /todolists.xml
  def create
    @todolist = Todolist.new(params[:todolist])

    respond_to do |format|
      if @todolist.save
        format.html { redirect_to(@todolist, :notice => 'Todolist was successfully created.') }
        #format.xml  { render :xml => @todolist, :status => :created, :location => @todolist }
        format.js { render :content_type => 'text/javascript' }
      else
        format.html { render :action => "new" }
        #format.xml  { render :xml => @todolist.errors, :status => :unprocessable_entity }
        format.js 
      end
    end
  end

  # PUT /todolists/1
  # PUT /todolists/1.xml
  def update
    @todolist = Todolist.find(params[:id])

    respond_to do |format|
      if @todolist.update_attributes(params[:todolist])
        format.html { redirect_to(@todolist, :notice => 'Todolist was successfully updated.') }
        #format.xml  { head :ok }
        format.js
      else
        format.html { render :action => "edit" }
        #format.xml  { render :xml => @todolist.errors, :status => :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /todolists/1
  # DELETE /todolists/1.xml
  def destroy
    @todolist = Todolist.find(params[:id])
    @todolist.destroy

    respond_to do |format|
      format.html { redirect_to(todolists_url) }
      #format.xml  { head :ok }
      format.js { render :content_type => 'text/javascript' }
    end
  end

  # GET /todolists/1/reorder
  # GET /todolists/1/reorder.xml  
  def reorder
  	@todolist = Todolist.find(params[:id])
  	@todolist.sorted_order = params[:new_order].to_i
  	
  	respond_to do |format|
  		if @todolist.update_attributes(params[:todolist])
        format.html { redirect_to(@todolist, :notice => 'Todolist was successfully updated.') }
        #format.xml  { head :ok }
        format.js
      else
        format.html { render :action => "edit" }
        #format.xml  { render :xml => @todolist.errors, :status => :unprocessable_entity }
        format.js
      end        
    end
	end
end
