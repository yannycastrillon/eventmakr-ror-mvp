class AddColumnVendorsGroupToVendorCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :vendor_categories, :vendorGroup, :string
  end
end
