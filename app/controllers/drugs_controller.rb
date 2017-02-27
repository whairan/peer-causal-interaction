class DrugsController < ApplicationController
  before_action :set_user
  load_and_authorize_resource
  #skip_before_filter :authenticate_user!, only: :index
  
  # GET /drugs
  # GET /drugs.json
  def index
  end

  # GET /drugs/1
  # GET /drugs/1.json
  def show
  end

  # GET /drugs/new
  def new
  end

  # GET /drugs/1/edit
  def edit
  end

  # POST /drugs
  # POST /drugs.json
  def create
    respond_to do |format|
      if @drug.save
        format.html { redirect_to @drug, notice: 'Drug was successfully created.' }
        format.json { render :show, status: :created, location: @drug }
      else
        format.html { render :new }
        format.json { render json: @drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drugs/1
  # PATCH/PUT /drugs/1.json
  def update
    respond_to do |format|
      if @drug.update(drug_params)
        format.html { redirect_to @drug, notice: 'Drug was successfully updated.' }
        format.json { render :show, status: :ok, location: @drug }
      else
        format.html { render :edit }
        format.json { render json: @drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drugs/1
  # DELETE /drugs/1.json
  def destroy
    @drug.destroy
    respond_to do |format|
      format.html { redirect_to drugs_url, notice: 'Drug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    #Set the current user before anything else
    def set_user
      @active = "drugs"
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drug_params
      params.require(:drug).permit(:name, :about)
    end
end
