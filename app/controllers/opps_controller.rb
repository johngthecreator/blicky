class OppsController < ApplicationController
  before_action :set_opp, only: %i[ show edit update destroy ]

  # GET /opps or /opps.json
  def index
      @opps = Opp.where(:user_id => current_user)
  end

  # GET /opps/1 or /opps/1.json
  def show
      @opps = Opp.find(params[:id])
  end

  # GET /opps/new
  def new
    @opp = Opp.new
  end

  # GET /opps/1/edit
  def edit
  end

  # POST /opps or /opps.json
  def create
    @opp = Opp.new(opp_params)

    respond_to do |format|
      if @opp.save
        format.html { redirect_to opp_url(@opp), notice: "Opp was successfully created." }
        format.json { render :show, status: :created, location: @opp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @opp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opps/1 or /opps/1.json
  def update
    new_value = params[:opp][:new_progress] # Assuming the name of the field in the form is 'new_value'
    updated_array = @opp.progress.append(new_value) if new_value.present?

    respond_to do |format|
      if @opp.update(opp_params)
        format.html { redirect_to opp_url(@opp), notice: "Opp was successfully updated." }
        format.json { render :show, status: :ok, location: @opp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @opp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opps/1 or /opps/1.json
  def destroy
    @opp.destroy!

    respond_to do |format|
      format.html { redirect_to opps_url, notice: "Opp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opp
      @opp = Opp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def opp_params
      params.require(:opp).permit(:name,:contact_info, :opp_reason, :progress, :user_id)
    end
end
