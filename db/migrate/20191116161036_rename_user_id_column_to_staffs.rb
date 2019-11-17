class RenameUserIdColumnToStaffs < ActiveRecord::Migration[5.2]
  def change
    rename_column :staffs, :user_id, :admin_user_id
  end
end
