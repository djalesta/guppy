class UserFishController < ApplicationController
  before_action :set_fish, only: [:show, :edit, :update, :destroy]

  def index
    @fish = current_user.fish
  end

  def show
  end

  def new
    @fish = Fish.new
  end

  def create
    @fish = current_user.fish.build(fish_params)
    if @fish.save
      redirect_to user_fish_index_path, notice: "Fish created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @fish.update(fish_params)
      redirect_to user_fish_index_path, notice: "Fish updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @fish.destroy
    redirect_to user_fish_index_path, notice: "Fish deleted successfully."
  end

  private

  def set_fish
    @fish = current_user.fish.find(params[:id])
  end

  def fish_params
    params.require(:fish).permit(:name, :fish_description, :color, :sex, :length, :latitude, :longitude, :availability, :photo)
  end
end
