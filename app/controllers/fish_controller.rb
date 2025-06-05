class FishController < ApplicationController
  before_action :authenticate_user!

  def show
    @fish = Fish.find(params[:id])
     @markers = @fish.geocoded.map do |flat|
    {
      lat: flat.latitude,
      lng: flat.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {fish: fish})
    }
    end
  end

  def index
    @fish = Fish.all
  end
end
