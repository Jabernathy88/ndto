class MatchupPlayer < ApplicationRecord
  belongs_to :matchup
  belongs_to :player
end
