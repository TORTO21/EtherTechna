class AddCollumnToStory < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :lead_in, :string
  end
end
