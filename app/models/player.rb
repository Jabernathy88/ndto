class Player < ApplicationRecord
  belongs_to :tournament, dependent: :destroy,
  counter_cache: true
  has_many :matchups, through: :matchup_players
end
