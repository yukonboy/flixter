class UserController < ApplicationController
  
  def index
    @user = User.all
    #@places = Place.order(:name).page(params[:page])
  end
    
  # displays information (GET) about a single user
  def show
    @user = User.find(params[:id])
    #@comment = Comment.find(params[:id])
    #@photo = Photo.find(params[:id])
    #@place = Place.find(params[:id])
    
    # @place = Place.new
    # @comment = Comment.new
    # @photo = Photo.new
  end
  
end
