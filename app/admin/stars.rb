ActiveAdmin.register Star do
  permit_params :name, :description, :cost, :star_type_id, :image
end
