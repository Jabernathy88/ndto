class Matchup < ApplicationRecord
  belongs_to :tournament 
  has_many :players, through: :matchup_players
end
