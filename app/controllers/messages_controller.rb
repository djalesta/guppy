class MessagesController < ApplicationController

  def index
  my_match_ids = Match.where("matches.user_id = ? OR fish_id IN (?)", current_user.id, current_user.fish_ids).pluck(:id)
  @messages = Message.where(match_id: my_match_ids).order(created_at: :desc)
  end


  def show

  end

  def inbox

    @matches = Match
      .includes(:fish, :user, messages: :user)
      .where("matches.user_id = ? OR fish_id IN (?)", current_user.id, current_user.fish_ids)
      .distinct


    @matches = @matches.sort_by { |m| -(m.messages.last&.created_at.to_i || 0) }
  end

  def show
    @match = Match.includes(messages: :user).find(params[:id])
    @message = Message.new
  end

def create
  @match = Match.find(params[:match_id])
  @message = @match.messages.build(message_params)
  @message.user = current_user
  if @message.save
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.append(
          :messages,
          partial: "messages/message",
          locals: { message: @message, user: current_user }
        )
      end
      format.html { redirect_to match_path(@match) }
    end
  else
    render "matches/show", status: :unprocessable_entity
  end
end


private

def message_params
  params.require(:message).permit(:content)
end

end
