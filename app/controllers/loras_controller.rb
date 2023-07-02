class LorasController < ApplicationController
  before_action :set_lora, only: %i[ show edit update destroy ]

  # GET /loras or /loras.json
  def index
    @loras = Lora.all
  end

  # GET /loras/1 or /loras/1.json
  def show
  end

  # GET /loras/new
  def new
    @lora = Lora.new
  end

  # GET /loras/1/edit
  def edit
  end

  # POST /loras or /loras.json
  def create
    @lora = Lora.new(lora_params)

    respond_to do |format|
      if @lora.save
        format.html { redirect_to lora_url(@lora), notice: "Lora was successfully created." }
        format.json { render :show, status: :created, location: @lora }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loras/1 or /loras/1.json
  def update
    respond_to do |format|
      if @lora.update(lora_params)
        format.html { redirect_to lora_url(@lora), notice: "Lora was successfully updated." }
        format.json { render :show, status: :ok, location: @lora }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loras/1 or /loras/1.json
  def destroy
    @lora.destroy

    respond_to do |format|
      format.html { redirect_to loras_url, notice: "Lora was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lora
      @lora = Lora.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lora_params
      params.require(:lora).permit(:general_setting_id, :name, :discription, :download_url, :extention_category_id, :extention_tag_id)
    end
end
