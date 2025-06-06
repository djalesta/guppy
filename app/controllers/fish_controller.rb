class FishController < ApplicationController
  before_action :authenticate_user!

  def show
    @fish = Fish.find(params[:id])
  end

  def index
    @fish = Fish.all
  end
end
