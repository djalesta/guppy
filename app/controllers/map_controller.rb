class MapController < ApplicationController
  def index
    @fish = Fish.all
    @markers = @fish.map do |fish|
    {
    lat: fish.latitude,
    lng: fish.longitude,
    info_window_html: render_to_string(partial: "info_window", locals: { fish: fish })
   }
    end
  end
end
