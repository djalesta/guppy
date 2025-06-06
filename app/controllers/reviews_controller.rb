class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fish_and_match

  def new
  if @match.reviews.exists?(user_id: current_user.id)
    redirect_to profile_path, alert: "You have already reviewed this match."
  else
    @review = Review.new
  end
end


  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.match = @match

    if @review.save
      redirect_to profile_path, notice: "Review submitted!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_fish_and_match
    @fish = Fish.find(params[:fish_id])
    @match = Match.find(params[:match_id])
  end

  def review_params
    params.require(:review).permit(:score, :comment)
  end
end
