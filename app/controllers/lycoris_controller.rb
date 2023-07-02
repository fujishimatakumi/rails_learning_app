class LycorisController < ApplicationController
  before_action :set_lycori, only: %i[ show edit update destroy ]

  # GET /lycoris or /lycoris.json
  def index
    @lycoris = Lycori.all
  end

  # GET /lycoris/1 or /lycoris/1.json
  def show
  end

  # GET /lycoris/new
  def new
    @lycori = Lycori.new
  end

  # GET /lycoris/1/edit
  def edit
  end

  # POST /lycoris or /lycoris.json
  def create
    @lycori = Lycori.new(lycori_params)

    respond_to do |format|
      if @lycori.save
        format.html { redirect_to lycori_url(@lycori), notice: "Lycori was successfully created." }
        format.json { render :show, status: :created, location: @lycori }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lycori.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lycoris/1 or /lycoris/1.json
  def update
    respond_to do |format|
      if @lycori.update(lycori_params)
        format.html { redirect_to lycori_url(@lycori), notice: "Lycori was successfully updated." }
        format.json { render :show, status: :ok, location: @lycori }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lycori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lycoris/1 or /lycoris/1.json
  def destroy
    @lycori.destroy

    respond_to do |format|
      format.html { redirect_to lycoris_url, notice: "Lycori was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lycori
      @lycori = Lycori.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lycori_params
      params.require(:lycori).permit(:general_setting_id, :name, :discription, :download_url, :extention_category_id, :extention_tag_id)
    end
end
