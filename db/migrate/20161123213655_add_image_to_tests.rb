class AddImageToTests < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :image, :text
  end
end
