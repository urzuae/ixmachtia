class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  skip_before_action :verify_authenticity_token, only: [:reorder]

  # GET /contents
  # GET /contents.json
  def index
    @contents = Content.all
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
  end

  # GET /contents/new
  def new
    @content = Content.new
    @chapter = Chapter.find(params[:id])
  end

  # GET /contents/1/edit
  def edit
    @chapter = @content.chapter
  end

  # POST /contents
  # POST /contents.json
  def create
    @content = Content.new(content_params)
    @chapter = @content.chapter

    redirect_to edit_chapter_path(@content.chapter), notice: 'Content was successfully created.' and return if @content.save

    @content = Content.new

    render :new
  end

  # PATCH/PUT /contents/1
  # PATCH/PUT /contents/1.json
  def update
    redirect_to edit_chapter_path(@content.chapter), notice: 'Content was successfully updated.' and return if @content.update(content_params)

    render :edit
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def reorder
    sorting = params[:sortable]
    sorting.each.with_index do |id, idx|
      chapter = Content.find_by(id: id)
      chapter.order = idx + 1
      chapter.save!
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:title, :order, :chapter_id, :content_type_id, :file, :url, :text)
    end
end
