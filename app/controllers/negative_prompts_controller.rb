class NegativePromptsController < ApplicationController
  before_action :set_negative_prompt, only: %i[ show edit update destroy ]

  # GET /negative_prompts or /negative_prompts.json
  def index
    @negative_prompts = NegativePrompt.all
  end

  # GET /negative_prompts/1 or /negative_prompts/1.json
  def show
  end

  # GET /negative_prompts/new
  def new
    @negative_prompt = NegativePrompt.new
  end

  # GET /negative_prompts/1/edit
  def edit
  end

  # POST /negative_prompts or /negative_prompts.json
  def create
    @negative_prompt = NegativePrompt.new(negative_prompt_params)

    respond_to do |format|
      if @negative_prompt.save
        format.html { redirect_to negative_prompt_url(@negative_prompt), notice: "Negative prompt was successfully created." }
        format.json { render :show, status: :created, location: @negative_prompt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @negative_prompt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negative_prompts/1 or /negative_prompts/1.json
  def update
    respond_to do |format|
      if @negative_prompt.update(negative_prompt_params)
        format.html { redirect_to negative_prompt_url(@negative_prompt), notice: "Negative prompt was successfully updated." }
        format.json { render :show, status: :ok, location: @negative_prompt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @negative_prompt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negative_prompts/1 or /negative_prompts/1.json
  def destroy
    @negative_prompt.destroy

    respond_to do |format|
      format.html { redirect_to negative_prompts_url, notice: "Negative prompt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negative_prompt
      @negative_prompt = NegativePrompt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def negative_prompt_params
      params.require(:negative_prompt).permit(:general_setting_id, :text, :translation_text, :prompt_category_id, :prompt_tag_id)
    end
end
