class RemoveColumnVendorGroupFromVendorCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :vendor_categories, :vendorGroup, :string
  end
end
