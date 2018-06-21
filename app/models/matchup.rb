class Matchup < ApplicationRecord
  belongs_to :tournament 
  has_many :matchup_players
  has_many :players, through: :matchup_players
end
