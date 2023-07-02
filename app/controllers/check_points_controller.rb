class CheckPointsController < ApplicationController
  before_action :set_check_point, only: %i[ show edit update destroy ]

  # GET /check_points or /check_points.json
  def index
    @check_points = CheckPoint.all
  end

  # GET /check_points/1 or /check_points/1.json
  def show
  end

  # GET /check_points/new
  def new
    @check_point = CheckPoint.new
  end

  # GET /check_points/1/edit
  def edit
  end

  # POST /check_points or /check_points.json
  def create
    @check_point = CheckPoint.new(check_point_params)

    respond_to do |format|
      if @check_point.save
        format.html { redirect_to check_point_url(@check_point), notice: "Check point was successfully created." }
        format.json { render :show, status: :created, location: @check_point }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @check_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_points/1 or /check_points/1.json
  def update
    respond_to do |format|
      if @check_point.update(check_point_params)
        format.html { redirect_to check_point_url(@check_point), notice: "Check point was successfully updated." }
        format.json { render :show, status: :ok, location: @check_point }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @check_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_points/1 or /check_points/1.json
  def destroy
    @check_point.destroy

    respond_to do |format|
      format.html { redirect_to check_points_url, notice: "Check point was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_point
      @check_point = CheckPoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def check_point_params
      params.require(:check_point).permit(:general_setting_id, :name, :discription, :download_url, :extention_category_id, :extention_tag_id)
    end
end
