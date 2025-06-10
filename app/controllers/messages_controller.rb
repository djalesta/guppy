class MessagesController < ApplicationController
  before_action :set_match, only: [:show, :create]

  def index
    latest_messages = Message
      .select('DISTINCT ON (match_id) *')
      .where(user_id: current_user.id)
      .order('match_id, created_at DESC')

    @messages = latest_messages.includes(:match => [:fish => :user])
  end

  def show
    @messages = @match.messages.includes(:user).order(:created_at)
    @new_message = Message.new
  end

def create
  @message = @match.messages.build(message_params)
  @message.user = current_user

  if @message.save
    message_html = render_to_string(
      partial: "messages/message",
      formats: [:html],
      locals: { message: @message }
    )

    ActionCable.server.broadcast(
      "message_#{@match.id}",
      { message: message_html }
    )

    head :ok
  else
    render turbo_stream: turbo_stream.replace(
      "message_form",
      partial: "messages/form",
      locals: { match: @match, message: @message }
    )
  end
end

  private

 def set_match
  if params[:match_id]
    @match = Match.find(params[:match_id])
  else
    @message = Message.find(params[:id])
    @match = @message.match
  end
end

  def message_params
    params.require(:message).permit(:content)
  end
end
