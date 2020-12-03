class FixUsersTableAgain < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :province_id
  end
end
