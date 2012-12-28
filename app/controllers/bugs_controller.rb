class BugsController < ApplicationController

  before_filter :authenticate_user!, :except => [:show, :index, :new, :create]

  # GET /bugs
  # GET /bugs.xml
  def index
    @bugs = Bug.order("resolved desc").order("error_type_id")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bugs }
    end
  end

  # GET /bugs/1
  # GET /bugs/1.xml
  def show
    @bug = Bug.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bug }
    end
  end

  # GET /bugs/new
  # GET /bugs/new.xml
  def new
    @bug = Bug.new
    @versions = Version.all
    @error_types = ErrorType.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bug }
    end
  end

  # GET /bugs/1/edit
  def edit
    @bug = Bug.find(params[:id])
    @versions = Version.all
    @error_types = ErrorType.all



  end

  # POST /bugs
  # POST /bugs.xml
  def create
    @bug = Bug.new(params[:bug])
    @versions = Version.all
    @error_types = ErrorType.all

    #@question = Question.new(params[:question])
   # if verify_recaptcha() and @question.save
   #   redirect_to :action => 'show', :permalink => @question.permalink
   # else
   #   render :action => 'new'
   # end

    respond_to do |format|
      if verify_recaptcha(:model => @bug, :message => "Oh! It's error with reCAPTCHA!") and @bug.save
        format.html { redirect_to(@bug, :notice => 'Bug was successfully created.') }
        format.xml  { render :xml => @bug, :status => :created, :location => @bug }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
      end
    end






  end

  # PUT /bugs/1
  # PUT /bugs/1.xml
  def update
    @bug = Bug.find(params[:id])
    @versions = Version.all
    @error_types = ErrorType.all
    respond_to do |format|
      if @bug.update_attributes(params[:bug])
        format.html { redirect_to(@bug, :notice => 'Bug was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bugs/1
  # DELETE /bugs/1.xml
  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy

    respond_to do |format|
      format.html { redirect_to(bugs_url) }
      format.xml  { head :ok }
    end
  end
end
