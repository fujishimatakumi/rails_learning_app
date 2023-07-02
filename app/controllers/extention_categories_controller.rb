class ExtentionCategoriesController < ApplicationController
  before_action :set_extention_category, only: %i[ show edit update destroy ]

  # GET /extention_categories or /extention_categories.json
  def index
    @extention_categories = ExtentionCategory.all
  end

  # GET /extention_categories/1 or /extention_categories/1.json
  def show
  end

  # GET /extention_categories/new
  def new
    @extention_category = ExtentionCategory.new
  end

  # GET /extention_categories/1/edit
  def edit
  end

  # POST /extention_categories or /extention_categories.json
  def create
    @extention_category = ExtentionCategory.new(extention_category_params)

    respond_to do |format|
      if @extention_category.save
        format.html { redirect_to extention_category_url(@extention_category), notice: "Extention category was successfully created." }
        format.json { render :show, status: :created, location: @extention_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @extention_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extention_categories/1 or /extention_categories/1.json
  def update
    respond_to do |format|
      if @extention_category.update(extention_category_params)
        format.html { redirect_to extention_category_url(@extention_category), notice: "Extention category was successfully updated." }
        format.json { render :show, status: :ok, location: @extention_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @extention_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extention_categories/1 or /extention_categories/1.json
  def destroy
    @extention_category.destroy

    respond_to do |format|
      format.html { redirect_to extention_categories_url, notice: "Extention category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extention_category
      @extention_category = ExtentionCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extention_category_params
      params.require(:extention_category).permit(:label, :color)
    end
end
