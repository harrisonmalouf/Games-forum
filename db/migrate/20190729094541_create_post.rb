class CreatePost < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :text
      t.text :image
      t.timestamps null:  false
    end
  end
end
