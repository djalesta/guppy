class FishController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fish, only: [:show]
  
  def index
    @fish = Fish.all
  end

end
