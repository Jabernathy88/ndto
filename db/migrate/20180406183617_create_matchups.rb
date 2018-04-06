class CreateMatchups < ActiveRecord::Migration[5.1]
  def change
    create_table :matchups do |t|
      t.integer :round_number
      t.integer :winner_id
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
