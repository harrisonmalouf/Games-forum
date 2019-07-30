class CreateGame < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.date :release_date
      t.text :company
      t.text :platform
      t.text :image
      t.timestamps null: false
    end
  end
end
