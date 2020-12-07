ActiveAdmin.register Order do
  permit_params :total, :sub_total, :item, :user_id, :status
end
