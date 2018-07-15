class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from "game_player_#{current_user.id}"
    Seek.create(current_user.id)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
