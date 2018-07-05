class SchoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if School.search_by_city("#{params[:query]}").present?
      @schools = School.search_by_city("#{params[:query]}")
    else
      @schools = School.all
    end
  end

  def show
    @school = School.find(params[:id])
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
    #@school.set_rating_average
    @school.save
  end


  def edit

  end

  def update

  end

  def destroy
    @school.destroy
  end

  private

  def school_params
    params.require(:school).permit(:name, :address, :city, :photo, :rating_average)
  end

  def set_rating_average
    @school.rating_average = @school.reviews.average(:rating).to_i.round(2)
  end

end
