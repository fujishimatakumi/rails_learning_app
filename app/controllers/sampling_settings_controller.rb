class SamplingSettingsController < ApplicationController
  before_action :set_sampling_setting, only: %i[ show edit update destroy ]

  # GET /sampling_settings or /sampling_settings.json
  def index
    @sampling_settings = SamplingSetting.all
  end

  # GET /sampling_settings/1 or /sampling_settings/1.json
  def show
  end

  # GET /sampling_settings/new
  def new
    @sampling_setting = SamplingSetting.new
  end

  # GET /sampling_settings/1/edit
  def edit
  end

  # POST /sampling_settings or /sampling_settings.json
  def create
    @sampling_setting = SamplingSetting.new(sampling_setting_params)

    respond_to do |format|
      if @sampling_setting.save
        format.html { redirect_to sampling_setting_url(@sampling_setting), notice: "Sampling setting was successfully created." }
        format.json { render :show, status: :created, location: @sampling_setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sampling_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sampling_settings/1 or /sampling_settings/1.json
  def update
    respond_to do |format|
      if @sampling_setting.update(sampling_setting_params)
        format.html { redirect_to sampling_setting_url(@sampling_setting), notice: "Sampling setting was successfully updated." }
        format.json { render :show, status: :ok, location: @sampling_setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sampling_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sampling_settings/1 or /sampling_settings/1.json
  def destroy
    @sampling_setting.destroy

    respond_to do |format|
      format.html { redirect_to sampling_settings_url, notice: "Sampling setting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sampling_setting
      @sampling_setting = SamplingSetting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sampling_setting_params
      params.require(:sampling_setting).permit(:general_setting_id, :method_id, :step, :height, :width, :batch_count, :batch_size, :cfg_scale, :seed, :script_id, :face_recover_flg, :generate_tiling_flg, :high_quality_setting_id)
    end
end
