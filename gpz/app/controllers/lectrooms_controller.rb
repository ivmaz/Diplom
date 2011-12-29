class LectroomsController < ApplicationController
  # GET /lectrooms
  # GET /lectrooms.json
  def index
    @lectrooms = Lectroom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lectrooms }
    end
  end

  # GET /lectrooms/1
  # GET /lectrooms/1.json
  def show
    @lectroom = Lectroom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lectroom }
    end
  end

  # GET /lectrooms/new
  # GET /lectrooms/new.json
  def new
    @lectroom = Lectroom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lectroom }
    end
  end

  # GET /lectrooms/1/edit
  def edit
    @lectroom = Lectroom.find(params[:id])
  end

  # POST /lectrooms
  # POST /lectrooms.json
  def create
    @lectroom = Lectroom.new(params[:lectroom])

    respond_to do |format|
      if @lectroom.save
        format.html { redirect_to @lectroom, :notice => 'Аудитория успешно создана' }
        format.json { render :json => @lectroom, :status => :created, :location => @lectroom }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lectroom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lectrooms/1
  # PUT /lectrooms/1.json
  def update
    @lectroom = Lectroom.find(params[:id])

    respond_to do |format|
      if @lectroom.update_attributes(params[:lectroom])
        format.html { redirect_to @lectroom, :notice => 'Аудитория успешно обновлена' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lectroom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lectrooms/1
  # DELETE /lectrooms/1.json
  def destroy
    @lectroom = Lectroom.find(params[:id])
    @lectroom.destroy

    respond_to do |format|
      format.html { redirect_to lectrooms_url }
      format.json { head :ok }
    end
  end
end
