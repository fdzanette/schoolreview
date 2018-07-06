class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_school, only: [:index, :new, :create, :all_photos]
  before_action :set_review, only: [:edit, :update]

  def all_photos
    @photos = @school.reviews
  end

  def index
    @reviews = @school.reviews
  end

  def user_reviews
    @reviews = current_user.reviews
  end


  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.school = School.find(params[:school_id])
    @review.user = current_user
    if @review.save
      redirect_to school_path(@school)
    else
      render :new
    end
  end

  def edit
    if @review.user != current_user
      redirect_to root_path
    end
  end

  def update
    if @review.user != current_user
      redirect_to root_path
    else
      @review.update(review_params)
      if @review.save
        redirect_to user_reviews_reviews_path
      else
        render :new
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.user != current_user
      flash[:alert] = "Esse comentário nao é seu!"
      render :show
    else
      @review.destroy
    end
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_school
    @school = School.find(params[:school_id])
  end


  def review_params
    params.require(:review).permit(:content, :rating, :photo)
  end

end
