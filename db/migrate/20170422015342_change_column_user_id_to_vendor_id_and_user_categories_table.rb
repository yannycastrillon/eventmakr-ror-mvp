class ChangeColumnUserIdToVendorIdAndUserCategoriesTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_categories, :user_id, :vendor_id
    rename_table :user_categories, :vendor_categories
  end
end
