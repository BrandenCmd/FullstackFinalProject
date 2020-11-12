class CreateStars < ActiveRecord::Migration[6.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.references :star_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
