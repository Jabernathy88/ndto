class Player < ApplicationRecord
  belongs_to :tournament
  has_many :matchup_players
  has_many :matchups, through: :matchup_players
end
