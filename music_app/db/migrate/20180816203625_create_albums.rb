class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.string :artist, null: false
      t.integer :year, null: false
      t.string :live

      t.timestamps
    end
    add_index :albums, :title
    add_index :albums, :artist
    add_index :albums, :year
    add_index :albums, :live
  end
end
