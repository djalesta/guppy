class FishController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fish, only: [:show, :edit, :update, :destroy]
end
