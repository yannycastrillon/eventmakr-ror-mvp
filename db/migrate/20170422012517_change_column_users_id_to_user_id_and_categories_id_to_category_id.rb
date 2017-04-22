class ChangeColumnUsersIdToUserIdAndCategoriesIdToCategoryId < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_categories, :users_id, :user_id
    rename_column :user_categories, :categories_id, :category_id

  end
end
