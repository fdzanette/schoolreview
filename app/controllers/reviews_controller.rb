class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_school, only: [:index, :new, :create, :all]

  def all
    @reviews = @school.reviews
  end

  def index
    @photos = @school.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.school = School.find(params[:school_id])
    @review.user = current_user
    if @review.save
      redirect_to school_path(@school)
    else
      render :new
    end
  end

  def destroy

  end

  private

  def set_school
    @school = School.find(params[:school_id])
  end


  def review_params
    params.require(:review).permit(:content, :rating, :photo)
  end

end
