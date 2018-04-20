class Tournament < ApplicationRecord
  belongs_to :user
  has_many :players,    foreign_key: :tournament_id
  has_many :matchups,   foreign_key: :tournament_id

end
