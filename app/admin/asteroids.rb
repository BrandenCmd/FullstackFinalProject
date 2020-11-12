ActiveAdmin.register Asteroid do
  permit_params :name, :description, :cost, :asteroid_type_id
end
