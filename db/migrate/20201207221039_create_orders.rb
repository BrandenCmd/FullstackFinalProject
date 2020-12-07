class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :total
      t.integer :sub_total
      t.text :item
      t.references :users, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
