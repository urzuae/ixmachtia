class CoursesController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
    @chapters = @course.chapters
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    redirect_to root_path, notice: 'Course was successfully created.' and return if @course.save
    render :new
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    redirect_to root_path, notice: 'Course was successfully updated.' and return if @course.update(course_params)
    render :edit
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    redirect_to root_path, notice: 'Course was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :subtitle, :description, :price, :duration, :user_id)
    end
end
