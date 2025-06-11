class MatchesController < ApplicationController

  def index
    @matches = Match.all.sort_by { |match| [match.user_id == current_user.id ? 1 : 0, -match.created_date.to_i] }
  end

  def new
    @fish = Fish.find(params[:fish_id])
    @User = current_user
    @match = Match.new
    @match.messages.build
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

def show
    @match = Match.find(params[:id])
    @message = Message.new
  end


private

  def match_params
    params.require(:match).permit(:start_date, :end_date, messages_attributes: [:content, :user_id])
  end

end
