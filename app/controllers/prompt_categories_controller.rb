class PromptCategoriesController < ApplicationController
  before_action :set_prompt_category, only: %i[ show edit update destroy ]

  # GET /prompt_categories or /prompt_categories.json
  def index
    @prompt_categories = PromptCategory.all
  end

  # GET /prompt_categories/1 or /prompt_categories/1.json
  def show
  end

  # GET /prompt_categories/new
  def new
    @prompt_category = PromptCategory.new
  end

  # GET /prompt_categories/1/edit
  def edit
  end

  # POST /prompt_categories or /prompt_categories.json
  def create
    @prompt_category = PromptCategory.new(prompt_category_params)

    respond_to do |format|
      if @prompt_category.save
        format.html { redirect_to prompt_category_url(@prompt_category), notice: "Prompt category was successfully created." }
        format.json { render :show, status: :created, location: @prompt_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prompt_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prompt_categories/1 or /prompt_categories/1.json
  def update
    respond_to do |format|
      if @prompt_category.update(prompt_category_params)
        format.html { redirect_to prompt_category_url(@prompt_category), notice: "Prompt category was successfully updated." }
        format.json { render :show, status: :ok, location: @prompt_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prompt_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prompt_categories/1 or /prompt_categories/1.json
  def destroy
    @prompt_category.destroy

    respond_to do |format|
      format.html { redirect_to prompt_categories_url, notice: "Prompt category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prompt_category
      @prompt_category = PromptCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prompt_category_params
      params.require(:prompt_category).permit(:label, :color)
    end
end
