class PromptTagsController < ApplicationController
  before_action :set_prompt_tag, only: %i[ show edit update destroy ]

  # GET /prompt_tags or /prompt_tags.json
  def index
    @prompt_tags = PromptTag.all
  end

  # GET /prompt_tags/1 or /prompt_tags/1.json
  def show
  end

  # GET /prompt_tags/new
  def new
    @prompt_tag = PromptTag.new
  end

  # GET /prompt_tags/1/edit
  def edit
  end

  # POST /prompt_tags or /prompt_tags.json
  def create
    @prompt_tag = PromptTag.new(prompt_tag_params)

    respond_to do |format|
      if @prompt_tag.save
        format.html { redirect_to prompt_tag_url(@prompt_tag), notice: "Prompt tag was successfully created." }
        format.json { render :show, status: :created, location: @prompt_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prompt_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prompt_tags/1 or /prompt_tags/1.json
  def update
    respond_to do |format|
      if @prompt_tag.update(prompt_tag_params)
        format.html { redirect_to prompt_tag_url(@prompt_tag), notice: "Prompt tag was successfully updated." }
        format.json { render :show, status: :ok, location: @prompt_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prompt_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prompt_tags/1 or /prompt_tags/1.json
  def destroy
    @prompt_tag.destroy

    respond_to do |format|
      format.html { redirect_to prompt_tags_url, notice: "Prompt tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prompt_tag
      @prompt_tag = PromptTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prompt_tag_params
      params.require(:prompt_tag).permit(:label, :color)
    end
end
