class FixUsersTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :provinces, foreign_key: true
  end
end
