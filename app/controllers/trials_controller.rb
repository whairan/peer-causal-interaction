class TrialsController < ApplicationController
  before_action :set_user
  load_and_authorize_resource
  
  # GET /trials
  # GET /trials.json
  def index
  end

  # GET /trials/1
  # GET /trials/1.json
  def show
  end

  # GET /trials/new
  def new
    @drug_options = [["Select Drug",nil]] + Drug.all.map {|st| [st.name, st.id]}
    @disease_options = [["Select Disease",nil]] + Disease.all.map {|st| [st.name, st.id]}
    @company_options = [["Select Company",nil]] + Company.all.map {|st| [st.name, st.id]}
  end

  # GET /trials/1/edit
  def edit
    @phases = @trial.phases
    @drug_options = [["Select Drug",nil]] + Drug.all.map {|st| [st.name, st.id]}
    @disease_options = [["Select Disease",nil]] + Disease.all.map {|st| [st.name, st.id]}
    @company_options = [["Select Company",nil]] + Company.all.map {|st| [st.name, st.id]}
  end

  # POST /trials
  # POST /trials.json
  def create
    @drug_options = [["Select Drug",nil]] + Drug.all.map {|st| [st.name, st.id]}
    @disease_options = [["Select Disease",nil]] + Disease.all.map {|st| [st.name, st.id]}
    @company_options = [["Select Company",nil]] + Company.all.map {|st| [st.name, st.id]}
    @trial = Trial.new(trial_params)

    respond_to do |format|
      if @trial.save
        format.html { redirect_to @trial, notice: 'Trial was successfully created.' }
        format.json { render :show, status: :created, location: @trial }
      else
        format.html { render :new }
        format.json { render json: @trial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trials/1
  # PATCH/PUT /trials/1.json
  def update
    respond_to do |format|
      if @trial.update(trial_params)
        format.html { redirect_to @trial, notice: 'Trial was successfully updated.' }
        format.json { render :show, status: :ok, location: @trial }
      else
        format.html { render :edit }
        format.json { render json: @trial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trials/1
  # DELETE /trials/1.json
  def destroy
    @trial.destroy
    respond_to do |format|
      format.html { redirect_to trials_url, notice: 'Trial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    #Set the current user before anything else
    def set_user
      @active = "trials"
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trial_params
      params.require(:trial).permit(:status_id, :disease_id, :start_date, :end_date, :phase_id, :drug_id, :gov_url, :company_id, :about)
    end
end
