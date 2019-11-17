class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :staff_name
      t.text :image_id
      t.string :part
      t.text :introduction
      t.integer :user_id

      t.timestamps
    end
  end
end
