class FishController < ApplicationController
  before_action :authenticate_user!

  def show
    @fish = Fish.find(params[:id])
  end

  def index
    @filters = params[:search] || {}

    @fish = Fish.all
    @fish = @fish.where(color: @filters[:color]) if @filters[:color].present?
    @fish = @fish.where(sex: @filters[:sex].downcase) if @filters[:sex].present?
    @fish = @fish.where("length >= ?", @filters[:length]) if @filters[:length].present?
    @fish = @fish.where(availability: @filters[:availability]) if @filters[:availability].present?
  end


end
