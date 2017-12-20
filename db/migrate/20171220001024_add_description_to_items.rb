class AddDescriptionToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :description, :text
    add_column :items, :image_url, :string
  end
end
