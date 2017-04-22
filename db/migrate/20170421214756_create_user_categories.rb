class CreateUserCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_categories do |t|
      t.belongs_to :users, index: true
      t.belongs_to :categories, index: true
      t.timestamps
    end
  end
end
