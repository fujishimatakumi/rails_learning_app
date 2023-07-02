class ExtentionTagsController < ApplicationController
  before_action :set_extention_tag, only: %i[ show edit update destroy ]

  # GET /extention_tags or /extention_tags.json
  def index
    @extention_tags = ExtentionTag.all
  end

  # GET /extention_tags/1 or /extention_tags/1.json
  def show
  end

  # GET /extention_tags/new
  def new
    @extention_tag = ExtentionTag.new
  end

  # GET /extention_tags/1/edit
  def edit
  end

  # POST /extention_tags or /extention_tags.json
  def create
    @extention_tag = ExtentionTag.new(extention_tag_params)

    respond_to do |format|
      if @extention_tag.save
        format.html { redirect_to extention_tag_url(@extention_tag), notice: "Extention tag was successfully created." }
        format.json { render :show, status: :created, location: @extention_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @extention_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extention_tags/1 or /extention_tags/1.json
  def update
    respond_to do |format|
      if @extention_tag.update(extention_tag_params)
        format.html { redirect_to extention_tag_url(@extention_tag), notice: "Extention tag was successfully updated." }
        format.json { render :show, status: :ok, location: @extention_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @extention_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extention_tags/1 or /extention_tags/1.json
  def destroy
    @extention_tag.destroy

    respond_to do |format|
      format.html { redirect_to extention_tags_url, notice: "Extention tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extention_tag
      @extention_tag = ExtentionTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extention_tag_params
      params.require(:extention_tag).permit(:label, :color)
    end
end
