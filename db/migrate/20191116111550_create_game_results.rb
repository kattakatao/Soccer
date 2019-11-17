class CreateGameResults < ActiveRecord::Migration[5.2]
  def change
    create_table :game_results do |t|
      t.string :title
      t.string :result
      t.string :place
      t.string :street_address
      t.date :match_day
      t.text :image_id
      t.integer :admin_user_id

      t.timestamps
    end
  end
end
