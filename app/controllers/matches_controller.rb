class MatchesController < ApplicationController

  def index
    @match = Match.new
  end


  def new
    @fish = Fish.find(params[:fish_id])
    @User = current_user
    @match = Match.new
  end

def create
  @fish = Fish.find(params[:fish_id])
  @User = current_user
  @match = Match.new(match_params)
  @match.user = current_user
  @match.fish = @fish
  @match.status = :pending
  # have to manually set thing things after match.new
  if @match.save
    redirect_to @fish, notice: "Match request created successfully!"
  else
    render :new, status: :unprocessable_entity
  end
end



private

  def match_params
    params.require(:match).permit(:start_date, :end_date)
  end

end
