class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :icon_img
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
