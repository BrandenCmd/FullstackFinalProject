class FixThisPleaseUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :province, foreign_key: true
  end
end
