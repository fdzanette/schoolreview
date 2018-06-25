class ReviewsController < ApplicationController
  before_action :set_school, only: [:new, :create]

  def index

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
    params.require(:review).permit(:content)
  end

end
