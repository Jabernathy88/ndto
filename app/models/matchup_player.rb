class MatchupPlayer < ApplicationRecord
  belongs_to :matchup
  belongs_to :player

  # dependent: :destroy,
  # counter_cache: true

end
