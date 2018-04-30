class AddTournamentRefToMatchup < ActiveRecord::Migration[5.1]
  def change
    add_reference :matchups, :tournament, foreign_key: true
  end
end
