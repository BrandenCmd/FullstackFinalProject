ActiveAdmin.register Planet do
  permit_params :name, :description, :cost, :planet_type_id, :image
end
