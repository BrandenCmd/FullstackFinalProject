class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.references :planet_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
