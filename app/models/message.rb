class Message < ApplicationRecord
  belongs_to :match
  belongs_to :user
  after_create_commit :broadcast_message

  private

  def broadcast_message
    broadcast_append_to(
      "match_#{match.id}_messages",
      partial: "messages/message",
      locals: { message: self, user: nil },
      target: "messages"
    )
  end
end
