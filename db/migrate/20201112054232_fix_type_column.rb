class FixTypeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :asteroid_types, :type, :name
    rename_column :star_types, :type, :name
    rename_column :planet_types, :type, :name
  end
end
