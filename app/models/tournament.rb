class Tournament < ApplicationRecord
  belongs_to :user, dependent: :destroy,
  counter_cache: true
  has_many :players
  has_many :matchups
end
