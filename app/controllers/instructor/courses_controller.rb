class Instructor::CoursesController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @course = Course.new
  end
  
  def create
    @course = current_user.courses.create(course_params)
    if @course.valid?
      redirect_to instructor_course_path(@course)
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def show
    # @course = Course.find(params[:id]) no longer necessary with current_courses helper definition and use
  end
    
  private
  
  def require_athorized_for_current_course
    if current_course.user != current_user
      render plain: "Unauthorized", status: :unauthorized
    end
  end
  
  helper_method :current_course
  def current_course
    @current_course ||= Course.find(params[:id])
  end
  
  def course_params
    params.require(:course).permit(:title, :description, :cost, :image)
  end
  
end


