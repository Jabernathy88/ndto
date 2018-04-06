class Matchup < ApplicationRecord
  belongs_to :tournament, dependent: :destroy,
  counter_cache: true
  has_many :players, through: :matchup_players
end
