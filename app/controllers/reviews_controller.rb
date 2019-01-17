class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_school, only: [:index, :new, :create, :all_photos, :up_vote]
  before_action :set_review, only: [:edit, :update, :up_vote]

  def all_photos
    @photos = []
    @school.reviews.each do |review|
      if review.photo.present?
        @photos << review
      end
    end
  end

  def index
    @reviews = @school.reviews
  end

  def user_reviews
    @reviews = current_user.reviews
  end


  def new
    if current_user.school_id != @school.id
      flash[:alert] = "Essa não é sua escola!"
      redirect_to school_path(@school)
    else
      @review = Review.new
    end
  end

  def create
    @review = Review.new(review_params)
    @review.school = School.find(params[:school_id])
    @review.user = current_user
    if @review.save
      @school.update(rating_average: @school.reviews.average(:rating).to_f)
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
      if @review.destroy
        respond_to do |format|
          format.html { redirect_to user_reviews_reviews_path }
          format.js  # <-- will render `app/views/reviews/destroy.js.erb`
        end
      else
        respond_to do |format|
          format.html { render 'rviews/user_reviews' }
          format.js  # <-- idem
        end
      end

    end
  end

  def up_vote
    @review.upvote_by current_user
    redirect_back(fallback_location: root_path)
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
