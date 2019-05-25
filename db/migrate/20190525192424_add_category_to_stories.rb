class AddCategoryToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :category, :string, null: false
  end
end
