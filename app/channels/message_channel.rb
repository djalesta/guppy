class MessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from "message_#{params[:match_id]}"
  end

  def unsubscribed

  end
end
