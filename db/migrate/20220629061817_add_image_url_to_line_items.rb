class AddImageUrlToLineItems < ActiveRecord::Migration[7.0]
  def change
    add_column :line_items, :image_url, :string
  end
end
