class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :content
      t.string :tag
      t.string :category
      t.string :mood

      t.timestamps null: false
    end
  end
end
