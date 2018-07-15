class Seek < ApplicationRecord
  def self.create(user_id)
    if opponent = REDIS.spop("seeks")
      #TODO: ここでマッチング成立ゲーム開始
      Rails.logger.debug "マッチング成功: user_id: #{user_id} / opponent_id: #{opponent}"
      Game.start(user_id, opponent)
    else
      REDIS.sadd("seeks", user_id)
    end
  end

  def self.remove(user_id)
    REDIS.srem("seeks", user_id)
  end

  def self.clear_all
    REDIS.del("seeks")
  end
end
