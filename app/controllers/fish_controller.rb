class FishController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fish, only: [:show]

  def show
    @fish = Fish.find(params[:id])
  end 
  
  def index
    @fish = Fish.all
  end

end
