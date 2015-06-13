class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :weight, null: false, default: 0
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
