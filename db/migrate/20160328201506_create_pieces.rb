class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :mood
      t.string :tag
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
