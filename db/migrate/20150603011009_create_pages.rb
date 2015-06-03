class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.string :key, null: false
      t.text :body
      t.jsonb :settings, null: false, default: {}

      t.timestamps null: false
    end
  end
end
