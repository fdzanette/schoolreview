require 'will_paginate/array'

class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if School.search_by_city("#{params[:query]}").present?
      @schools = School.search_by_city("#{params[:query]}")
      @schools = @schools.sort_by { |k| k[:rating_average].to_f }.reverse!
      @schools = @schools.paginate(:page => params[:page], :per_page => 9)
    else
      @schools = School.all
      @schools = @schools.sort_by { |k| k[:rating_average].to_f }.reverse!
      @schools = @schools.paginate(:page => params[:page], :per_page => 9)
    end
    flash[:last_search_path] = request.url
  end

  def show
    @review = Review.new
    @reviews = @school.reviews
    @markers =
      {
        lat: @school.latitude,
        lng: @school.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    @school.save
  end


  def edit

  end

  def update
    @school.update(school_params)
  end

  def destroy
    @school.destroy
  end

  private

  def school_params
    params.require(:school).permit(:name, :address, :city, :photo, :rating_average)
  end

  def set_school
    @school = School.find(params[:id])
  end
end
