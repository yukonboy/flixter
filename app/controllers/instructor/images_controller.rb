class Instructor::ImagesController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @image = Image.new
  end
  
  def create
    @image.current_course.images.create!(image_params)
    redirect_to instructor_courses_path(current_course)
  end
  
  private
  
  def require_athorized_for_current_image
    if current_course.user != current_user
      render plain: "Unauthorized", status: :unauthorized
    end
  end
  
  helper_method :current_course_image
  def current_course_image
    @current_course_image ||= Course.find(image_params[:course_id])
  end
    
  def image_params
    params.require().permit(:image).merge(:user_id, :current_user_id)
  end
end
