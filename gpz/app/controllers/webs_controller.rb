class WebsController < ApplicationController
  # GET /webs
  # GET /webs.json
  def index
    @webs = Web.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @webs }
    end
  end

  # GET /webs/1
  # GET /webs/1.json
  def show
    @web = Web.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @web }
    end
  end

  # GET /webs/new
  # GET /webs/new.json
  def new
    @web = Web.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @web }
    end
  end

  # GET /webs/1/edit
  def edit
    @web = Web.find(params[:id])
  end

  # POST /webs
  # POST /webs.json
  def create
    @web = Web.new(params[:web])

    respond_to do |format|
      if @web.save
        format.html { redirect_to @web, :notice => 'Сетка расписания успешно создана' }
        format.json { render :json => @web, :status => :created, :location => @web }
      else
        format.html { render :action => "new" }
        format.json { render :json => @web.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /webs/1
  # PUT /webs/1.json
  def update
    @web = Web.find(params[:id])

    respond_to do |format|
      if @web.update_attributes(params[:web])
        format.html { redirect_to @web, :notice => 'Сетка расписания успешно обновлена' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @web.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /webs/1
  # DELETE /webs/1.json
  def destroy
    @web = Web.find(params[:id])
    @web.destroy

    respond_to do |format|
      format.html { redirect_to webs_url }
      format.json { head :ok }
    end
  end
end
