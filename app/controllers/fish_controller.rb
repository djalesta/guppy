class FishController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fish, only: [:show, :edit, :update, :destroy]

  def index
    @fish = current_user.fish
  end

  def new
    @fish = Fish.new
  end

  def show; end

  def create
    @fish = current_user.fish.build(fish_params)
    if @fish.save
      redirect_to fish_index_path, notice: "Fish uploaded!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @fish.update(fish_params)
      redirect_to fish_index_path, notice: "Fish updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @fish.destroy
    redirect_to fish_index_path, notice: "Fish removed!"
  end

  private

  def set_fish
    @fish = current_user.fish.find(params[:id])
  end

  def fish_params
    params.require(:fish).permit(
      :name,
      :fish_description,
      :color,
      :sex,
      :length,
      :latitude,
      :longitude,
      :availability,
      :photo
    )
  end
end
