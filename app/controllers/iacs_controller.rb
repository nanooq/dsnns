class IacsController < ApplicationController
  before_filter :authenticate_user!, :except => [ :show, :index ]


  # GET /iacs/getAddress
  # GET /iacs/getAddress.json
  def getAddress
    @iac = Iac.find_by_identity(params[:identity])

    respond_to do |format|
      format.html # getUrl.html.erb
      format.json { render json: @iac }
    end
  end

  # GET /iacs
  # GET /iacs.json
  def index
    @iacs = Iac.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @iacs }
    end
  end

  # GET /iacs/1
  # GET /iacs/1.json
  def show
    @iac = Iac.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @iac }
    end
  end

  # GET /iacs/new
  # GET /iacs/new.json
  def new
    @iac = Iac.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @iac }
    end
  end

  # GET /iacs/1/edit
  def edit
    @iac = Iac.find(params[:id])
  end

  # POST /iacs
  # POST /iacs.json
  def create
    @iac = Iac.new(params[:iac])

    respond_to do |format|
      if @iac.save
        format.html { redirect_to @iac, notice: 'Iac was successfully created.' }
        format.json { render json: @iac, status: :created, location: @iac }
      else
        format.html { render action: "new" }
        format.json { render json: @iac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /iacs/1
  # PUT /iacs/1.json
  def update
    @iac = Iac.find(params[:id])

    respond_to do |format|
      if @iac.update_attributes(params[:iac])
        format.html { redirect_to @iac, notice: 'Iac was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @iac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iacs/1
  # DELETE /iacs/1.json
  def destroy
    @iac = Iac.find(params[:id])
    @iac.destroy

    respond_to do |format|
      format.html { redirect_to iacs_url }
      format.json { head :no_content }
    end
  end
end
