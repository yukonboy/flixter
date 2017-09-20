class CoursesController < ApplicationController
  
   before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # list places (GET)
  # def index
  #     @places = Place.all
  #     @places = Place.order(:name).page(params[:page])
  # end
  
  # # form to create a new place (GET)
  # def new
  #   @place = Place.new
  # end
  
  # # posted (POST) place information to create a place
  # def create
  #   @place = current_user.places.create(place_params)
  #   if @place.valid?
  #     redirect_to root_path
  #   else
  #     render :new, status: :uprocessable_entity
  #   end
  # end
  
  # # displays information (GET) about a single place
  # def show
  #   @place = Place.find(params[:id])
  #   @comment = Comment.new
  #   @photo = Photo.new
  # end
  
  # # renders an edit (GET) form for an existing place
  # def edit
  #   @place = Place.find(params[:id])
    
  #   if @place.user != current_user
  #     return render text: 'Not Allowed', status: :forbidden
  #   end
  # end
  
  # # puts (PUT) form data to update an existing place
  # def update
  #   @place = Place.find(params[:id])
    
  #   if @place.user != current_user
  #     return render text: 'Not Allowed', status: :forbidden
  #   end
    
  #   @place.update_attributes(place_params)
  #   if @place.valid?
  #     redirect_to root_path
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end
  
  # # deletes (DELETE) a place from the system (not necessarily the database)
  # def destroy
  #   @place = Place.find(params[:id])
  #   if @place.user != current_user
  #     return render text: 'Not Allowed', status: :forbidden
  #   end
    
  #   @place.destroy

  #   redirect_to root_path
  # end
  
  # private
  
  # def place_params
  #   params.require(:place).permit(:name, :description, :address)
  # end
    
    
    
end
