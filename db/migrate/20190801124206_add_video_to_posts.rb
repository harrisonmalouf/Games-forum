class AddVideoToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :video, :text
  end
end
