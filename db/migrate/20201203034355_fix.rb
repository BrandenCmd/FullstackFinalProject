class Fix < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :province
  end
end
