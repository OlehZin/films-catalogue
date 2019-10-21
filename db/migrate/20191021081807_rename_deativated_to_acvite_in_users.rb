class RenameDeativatedToAcviteInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :deactivated, true
    rename_column :users, :deactivated, :active
  end
end
