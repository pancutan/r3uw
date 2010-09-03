class ErrorTypesController < ApplicationController
  # GET /error_types
  # GET /error_types.xml
  def index
    @error_types = ErrorType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @error_types }
    end
  end

  # GET /error_types/1
  # GET /error_types/1.xml
  def show
    @error_type = ErrorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @error_type }
    end
  end

  # GET /error_types/new
  # GET /error_types/new.xml
  def new
    @error_type = ErrorType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @error_type }
    end
  end

  # GET /error_types/1/edit
  def edit
    @error_type = ErrorType.find(params[:id])
  end

  # POST /error_types
  # POST /error_types.xml
  def create
    @error_type = ErrorType.new(params[:error_type])

    respond_to do |format|
      if @error_type.save
        format.html { redirect_to(@error_type, :notice => 'Error type was successfully created.') }
        format.xml  { render :xml => @error_type, :status => :created, :location => @error_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @error_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /error_types/1
  # PUT /error_types/1.xml
  def update
    @error_type = ErrorType.find(params[:id])

    respond_to do |format|
      if @error_type.update_attributes(params[:error_type])
        format.html { redirect_to(@error_type, :notice => 'Error type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @error_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /error_types/1
  # DELETE /error_types/1.xml
  def destroy
    @error_type = ErrorType.find(params[:id])
    @error_type.destroy

    respond_to do |format|
      format.html { redirect_to(error_types_url) }
      format.xml  { head :ok }
    end
  end
end
