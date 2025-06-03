class FishController < ApplicationController
def article_params
  params.require(:fish).permit(:name, :fish_description, :color, :sex, :length, :latitude,
  :longitude, :availability, :photo)
end
end
