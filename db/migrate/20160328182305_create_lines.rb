class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :content
      t.string :tag

      t.timestamps null: false
    end
  end
end
