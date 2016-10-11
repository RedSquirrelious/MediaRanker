class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.belongs_to :media, index: true
      t.string :name
      t.string :artist
      t.string :description
      t.integer :rank

      t.timestamps null: false
    end
  end
end
