class MessagesController < ApplicationController

  def index
    @messages = Message.where(user_id: current_user.id)
  end

  def show
    
  end


end
