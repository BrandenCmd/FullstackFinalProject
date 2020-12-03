ActiveAdmin.register User do
  permit_params :email, :encrypted_password, :address, :province_id, :postal_code
end
