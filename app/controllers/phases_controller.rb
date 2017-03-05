class PhasesController < ApplicationController
  before_action :set_user
  load_and_authorize_resource
  
  # GET /phases
  # GET /phases.json
  def index
  end

  # GET /phases/1
  # GET /phases/1.json
  def show
  end

  # GET /phases/new
  def new
    @status_options = [["Select Status",nil]] + Status.all.map {|st| [st.name, st.id]}
  end

  # GET /phases/1/edit
  def edit
    @status_options = [["Select Status",nil]] + Status.all.map {|st| [st.name, st.id]}
  end

  # POST /phases
  # POST /phases.json
  def create
    @phase = Phase.new(phase_params)
    @phase.start_date = Date.parse(phase_params[:start_date]).at_beginning_of_month
    @phase.end_date = Date.parse(phase_params[:end_date]).at_end_of_month
    @phase.trial_id = @trial.id
    respond_to do |format|
      if @phase.save
        format.html { redirect_to @trial, notice: 'Phase was successfully created.' }
        format.json { render :show, status: :created, location: @phase }
      else
        format.html { render :new }
        format.json { render json: @phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phases/1
  # PATCH/PUT /phases/1.json
  def update
    @phase.update(phase_params)
    @phase.start_date = Date.parse(phase_params[:start_date]).at_beginning_of_month
    @phase.end_date = Date.parse(phase_params[:end_date]).at_end_of_month
    respond_to do |format|
      if @phase.save
        format.html { redirect_to @trial, notice: 'Phase was successfully updated.' }
        format.json { render :show, status: :ok, location: @phase }
      else
        format.html { render :edit }
        format.json { render json: @phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phases/1
  # DELETE /phases/1.json
  def destroy
    @phase.destroy
    respond_to do |format|
      format.html { redirect_to trial_url(@trial), notice: 'Phase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    #Set the current user before anything else
    def set_user
      @active = "phases"
      @user = current_user
      @trial = Trial.find(params[:trial_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phase_params
      params.require(:phase).permit(:name, :status_id, :start_date, :end_date, :about, :trial_id)
    end
end
