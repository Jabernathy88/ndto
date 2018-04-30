class Player < ApplicationRecord
  belongs_to :tournament
  has_many :matchups, through: :matchup_players
end
