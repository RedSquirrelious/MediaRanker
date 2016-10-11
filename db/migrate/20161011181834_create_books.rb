class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs :media, index: true
      t.string :title
      t.string :director
      t.string :description
      t.integer :rank


      t.timestamps null: false
    end
  end
end
