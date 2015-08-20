class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category
      t.string :description
      t.string :name
      t.integer :user_id
      t.integer :price

      t.timestamps null: false
    end
  end
end
