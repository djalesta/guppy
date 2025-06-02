class FishController < ApplicationController
def article_params
  params.require(:fish).permit(:name, :fish_description, :color, :sex, :length, :altitude,
  :longitude, :availability, :photo)
end
end
