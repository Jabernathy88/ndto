class CreateMatchupPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :matchup_players do |t|
      t.integer :win_count
      t.integer :loss_count
      t.integer :draw_count
      t.references :matchup, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
