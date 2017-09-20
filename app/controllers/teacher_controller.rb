class TeacherController < ApplicationController
  
  def index
    @teacher = Teacher.all
    #@places = Place.order(:name).page(params[:page])
  end
    
  # displays information (GET) about a single user
  def show
    @teacher = Teacher.find(params[:id])
    #@comment = Comment.find(params[:id])
    #@photo = Photo.find(params[:id])
    #@place = Place.find(params[:id])
    
    # @place = Place.new
    # @comment = Comment.new
    # @photo = Photo.new
  end
  
end
