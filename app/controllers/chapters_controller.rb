class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]

  skip_before_action :verify_authenticity_token, only: [:reorder]

  # GET /chapters
  # GET /chapters.json
  def index
    @chapters = Chapter.all
  end

  # GET /chapters/1
  # GET /chapters/1.json
  def show
  end

  # GET /chapters/new
  def new
    @chapter = Chapter.new
    @course = Course.find(params[:id])
  end

  # GET /chapters/1/edit
  def edit
    @course = @chapter.course
    @contents = @chapter.contents.ordered
  end

  # POST /chapters
  # POST /chapters.json
  def create
    @chapter = Chapter.new(chapter_params)
    @course = @chapter.course
      
    redirect_to edit_chapter_path(@chapter), notice: 'Chapter was successfully created.' and return if @chapter.save

    @chapter = Chapter.new
    
    render :new
  end

  # PATCH/PUT /chapters/1
  # PATCH/PUT /chapters/1.json
  def update
    redirect_to edit_course_path(@chapter.course), notice: 'Chapter was successfully updated.' and return if @chapter.update(chapter_params)

    render :edit
  end

  # DELETE /chapters/1
  # DELETE /chapters/1.json
  def destroy
    @chapter.destroy

    redirect_to edit_course_path(@chapter.course), notice: 'Chapter was successfully destroyed.'  
  end

  def reorder
    sorting = params[:sortable]
    sorting.each.with_index do |id, idx|
      chapter = Chapter.find_by(id: id)
      chapter.order = idx + 1
      chapter.save!
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_params
      params.require(:chapter).permit(:title, :description, :order, :course_id, :thumbnail)
    end
end
