class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :school_year
      t.string :part
      t.string :position
      t.text :image_id
      t.text :introduction
      t.integer :admin_user_id
      t.string :former_affiliation
      t.string :course

      t.timestamps
    end
  end
end
