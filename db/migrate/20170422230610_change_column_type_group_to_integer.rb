class ChangeColumnTypeGroupToInteger < ActiveRecord::Migration[5.0]

  def change
    remove_column :users, :group, :string
    add_column :users, :group, :integer
  end

end
