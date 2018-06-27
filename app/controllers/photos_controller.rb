class PhotosController < ApplicationController

   def index
    @photo = Photo.all
  end

  def show

  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.school = School.find(params[:school_id])
    @photo.save
  end

  def destroy
    @photo.destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:url)
  end

end
