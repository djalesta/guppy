class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def public_profile
    @user = User.find(params[:id])
    @fishes = @user.fish
    @reviews = @user.received_reviews.includes(:match, :user)
  end
end
